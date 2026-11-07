"""
bench_ingest.py - measure how long Kafka -> Snowflake ingestion takes.

Run it right after generate_clickstream.py. It polls the Snowflake table until
every event the generator sent has arrived, then prints:
  - end-to-end time: first event produced -> last event visible in Snowflake
  - lag after produce: last event produced -> last event visible
  - ingest throughput in events/s
and appends one row to bench_results/ingest_results.csv.

Usage:
    python scripts/generate_clickstream.py --events 10000 --topic clickstream.bench --tag bench
    python scripts/bench_ingest.py                       # reads the generator's run info
    python scripts/bench_ingest.py --expected 10000 --since-ms 1730000000000

Connection (key-pair, same as dbt dev). Override with environment variables:
    SNOWFLAKE_ACCOUNT           default WUMMBRQ-LB67529
    SNOWFLAKE_USER              default BANASPIH
    SNOWFLAKE_PRIVATE_KEY_PATH  default ~/.snowflake/dbt_rsa_key.p8
    SNOWFLAKE_ROLE              default DBT_ROLE
    SNOWFLAKE_WAREHOUSE         default ABACUS_WH

Needs:  pip install snowflake-connector-python cryptography
If you get "does not exist or not authorized" after rows should have arrived:
    grant select on all tables in schema ABACUS_ANALYTICS.RAW to role DBT_ROLE;
    grant select on future tables in schema ABACUS_ANALYTICS.RAW to role DBT_ROLE;
"""
import argparse
import csv
import json
import os
import tempfile
import time
from datetime import datetime, timezone
from pathlib import Path

RESULTS = Path(__file__).resolve().parent.parent / "bench_results" / "ingest_results.csv"
LAST_RUN = Path(tempfile.gettempdir(), "clickstream_last_run.json")
TABLE_FOR_TOPIC = {"clickstream.bench": "CLICKSTREAM_EVENTS_BENCH", "clickstream.events": "CLICKSTREAM_EVENTS"}


def connect():
    import snowflake.connector
    from cryptography.hazmat.primitives import serialization

    key_path = Path(os.environ.get("SNOWFLAKE_PRIVATE_KEY_PATH", "~/.snowflake/dbt_rsa_key.p8")).expanduser()
    key = serialization.load_pem_private_key(key_path.read_bytes(), password=None)
    der = key.private_bytes(serialization.Encoding.DER, serialization.PrivateFormat.PKCS8,
                            serialization.NoEncryption())
    return snowflake.connector.connect(
        account=os.environ.get("SNOWFLAKE_ACCOUNT", "WUMMBRQ-LB67529"),
        user=os.environ.get("SNOWFLAKE_USER", "BANASPIH"),
        private_key=der,
        role=os.environ.get("SNOWFLAKE_ROLE", "DBT_ROLE"),
        warehouse=os.environ.get("SNOWFLAKE_WAREHOUSE", "ABACUS_WH"),
        database="ABACUS_ANALYTICS",
        schema="RAW",
        session_parameters={"USE_CACHED_RESULT": False},
    )


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--expected", type=int, help="events to wait for (default: what the generator sent)")
    p.add_argument("--since-ms", type=int, help="only count rows with Kafka CreateTime >= this (default: generator start)")
    p.add_argument("--table", help="RAW table (default: from the generator's topic)")
    p.add_argument("--timeout", type=int, default=1800, help="give up after N seconds (default 1800)")
    p.add_argument("--poll", type=float, default=5, help="seconds between checks (default 5)")
    p.add_argument("--label", default="", help="free text saved with the result, e.g. 'XS warehouse, 4 tasks'")
    args = p.parse_args()

    run = json.loads(LAST_RUN.read_text()) if LAST_RUN.exists() else {}
    expected = args.expected or run.get("sent")
    since_ms = args.since_ms or run.get("start_ms")
    table = args.table or TABLE_FOR_TOPIC.get(run.get("topic"), "CLICKSTREAM_EVENTS_BENCH")
    if not expected or not since_ms:
        raise SystemExit("No generator run found. Run generate_clickstream.py first, or pass --expected and --since-ms.")
    produce_end_ms = run.get("end_ms", since_ms)

    sql = (f"select count(*), max(record_metadata:CreateTime::number) "
           f"from ABACUS_ANALYTICS.RAW.{table} "
           f"where record_metadata:CreateTime::number >= {since_ms}")
    print(f"waiting for {expected:,} rows in RAW.{table} (CreateTime >= {since_ms}) ...")

    conn = connect()
    cur = conn.cursor()
    who = cur.execute("select current_organization_name() || '-' || current_account_name(), "
                      "current_user(), current_role(), current_warehouse()").fetchone()
    print(f"connected as  account={who[0]}  user={who[1]}  role={who[2]}  warehouse={who[3]}")
    count, done_ms, t_start = 0, None, time.time()
    try:
        while time.time() - t_start < args.timeout:
            try:
                count = cur.execute(sql).fetchone()[0] or 0
            except Exception as e:                      # table is created by the connector on first write
                if "does not exist" in str(e):
                    count = 0
                elif "is suspended" in str(e):
                    raise SystemExit(
                        f"Warehouse {who[3]} is suspended and this role cannot wake it up.\n"
                        "Fix in Snowflake (ACCOUNTADMIN):\n"
                        "  show warehouses like 'ABACUS_WH';   -- check auto_resume and resource_monitor\n"
                        "  alter warehouse ABACUS_WH set auto_resume = true;\n"
                        f"  grant usage, operate on warehouse ABACUS_WH to role {who[2]};")
                else:
                    raise
            now_ms = int(time.time() * 1000)
            print(f"  {datetime.now().strftime('%H:%M:%S')}  {count:>10,} / {expected:,}"
                  f"  ({count / expected:5.1%})  {(now_ms - since_ms) / 1000:7.1f}s since produce start")
            if count >= expected:
                done_ms = now_ms
                break
            time.sleep(args.poll)
    finally:
        cur.close()
        conn.close()

    if done_ms is None:
        print(f"TIMEOUT after {args.timeout}s: {count:,} of {expected:,} rows arrived "
              f"({expected - count:,} missing). Check the connector status and the DLQ topic.")
        e2e_s = lag_s = rate = None
    else:
        e2e_s = (done_ms - since_ms) / 1000
        lag_s = max(0.0, (done_ms - produce_end_ms) / 1000)
        rate = expected / e2e_s if e2e_s else 0
        print(f"\nall {expected:,} rows arrived")
        print(f"  produce        : {run.get('produce_seconds', '?')} s  ({run.get('produce_events_per_s', '?')} events/s)")
        print(f"  end-to-end     : {e2e_s:.1f} s  (first event produced -> all rows in Snowflake)")
        print(f"  lag after send : {lag_s:.1f} s  (last event produced -> all rows in Snowflake)")
        print(f"  ingest rate    : {rate:,.0f} events/s")
        print(f"  (accuracy is about +/- {args.poll:g}s, the polling interval)")

    RESULTS.parent.mkdir(exist_ok=True)
    new = not RESULTS.exists()
    with RESULTS.open("a", newline="") as f:
        w = csv.writer(f)
        if new:
            w.writerow(["run_at_utc", "table", "expected", "arrived", "produce_s", "produce_ev_s",
                        "end_to_end_s", "lag_after_send_s", "ingest_ev_s", "label"])
        w.writerow([datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S"), table, expected, count,
                    run.get("produce_seconds"), run.get("produce_events_per_s"),
                    e2e_s and round(e2e_s, 1), lag_s and round(lag_s, 1), rate and round(rate), args.label])
    print(f"result appended to {RESULTS}")


if __name__ == "__main__":
    main()
