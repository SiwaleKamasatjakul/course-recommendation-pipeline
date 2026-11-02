"""
generate_clickstream.py - send realistic synthetic clickstream events to Kafka.

Events have exactly the same shape as the web app's, so they flow
Kafka -> Snowflake connector -> RAW.CLICKSTREAM_EVENTS -> dbt like real clicks.

Reference data comes from the app's Supabase export in course_data/:
  courses_rows.csv        course ids, Thai/English names, category, status
  course_levels_rows.csv  course_level_id -> grade_code (G1..G10, CD-*)
  competitions_rows.csv   competition ids, names, grade, program

Every synthetic actor and session id starts with "synth-", so the data is easy
to find and remove later.

Usage:
    python scripts/generate_clickstream.py --dry-run          # summary + 5 events, send nothing
    python scripts/generate_clickstream.py                    # 40 parents, last 30 days
    python scripts/generate_clickstream.py --parents 100 --days 60 --seed 7
"""
import argparse
import csv
import json
import random
import re
import uuid
from collections import Counter
from datetime import datetime, timedelta, timezone
from pathlib import Path

TOPIC = "clickstream.events"
BOOTSTRAP = "localhost:29092"
APP = "http://localhost:3000"
DATA_DIR = Path(__file__).resolve().parent.parent / "course_data"
USER_AGENT = ("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 "
              "(KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36")

# Supabase stores courses.category as 'abacus' / 'child-development',
# the app sends metadata.path_type as 'abacus' / 'child-dev'.
PATH_TYPE = {"abacus": "abacus", "child-development": "child-dev"}
ACTIONS = ["view_course_from_path", "expand_details"]
# parents look at running and upcoming courses more than finished ones
STATUS_WEIGHT = {"upcoming": 3, "in-progress": 2, "completed": 1}


def read_csv(name):
    with (DATA_DIR / name).open(encoding="utf-8-sig") as f:
        return [{k: (v or "").strip() for k, v in row.items()} for row in csv.DictReader(f)]


def grade_number(text):
    """'G3' or 'Grade 3' -> 3; 'CD-ART' -> None."""
    m = re.fullmatch(r"(?:G|Grade\s*)(\d+)", text or "")
    return int(m.group(1)) if m else None


def load_courses():
    levels = {r["id"]: r["grade_code"] for r in read_csv("course_levels_rows.csv")}
    courses, warnings = [], []
    for r in read_csv("courses_rows.csv"):
        if r["is_active"].lower() != "true" or r["category"] not in PATH_TYPE:
            continue
        grade_code = levels.get(r["course_level_id"], "")
        grade = grade_number(grade_code)
        name_grade = grade_number(re.sub(r".*?(Grade\s*\d+).*", r"\1", r["name_en"]))
        if grade and name_grade and grade != name_grade:
            warnings.append(f"course {r['id'][:8]} is {grade_code} but name_en says '{r['name_en']}'")
        courses.append({
            "id": r["id"], "name": r["name"], "name_en": r["name_en"] or r["name"],
            "category": r["category"], "grade": grade,
            "weight": STATUS_WEIGHT.get(r["status"], 1),
        })
    return courses, warnings


def load_competitions():
    """The export holds every competition twice (seed ran twice): keep the oldest row of each."""
    rows = sorted(read_csv("competitions_rows.csv"), key=lambda r: r["created_at"])
    seen, comps = set(), []
    for r in rows:
        key = (r["name"], r["event_date"], r["grade"])
        if key in seen:
            continue
        seen.add(key)
        comps.append({
            "id": r["id"], "name": r["name"], "name_en": r["name_en"] or r["name"],
            "grade": r["grade"], "program": r["program"],
            "category": "child-development" if r["program"] == "child-development" else "abacus",
            "grade_n": grade_number(r["grade"]),
            "weight": 3 if r["status"] == "upcoming" else 1,
        })
    return comps, len(rows) - len(comps)


def iso(ts):
    return ts.strftime("%Y-%m-%dT%H:%M:%S.") + f"{ts.microsecond // 1000:03d}Z"


def event(event_type, ts, session_id, user_id, page, metadata):
    url = f"{APP}{page}"
    return {
        "event_type": event_type, "session_id": session_id, "user_id": user_id,
        "timestamp": iso(ts), "url": url,
        "metadata": {**metadata, "ip": "::1", "referer": url, "user_agent": USER_AGENT},
    }


def course_click(ts, sid, uid, c, from_path):
    return event("course_card_clicked", ts, sid, uid, "/learning-path" if from_path else "/courses", {
        "action": "view_course_from_path" if from_path else random.choice(ACTIONS),
        "course_id": c["id"], "course_name": c["name"], "course_name_en": c["name_en"],
        "language": random.choice(["en", "th"]),
        "path_type": PATH_TYPE[c["category"]] if from_path else None,  # empty off the path, like the app
        "source": "learning_path_page" if from_path else "courses_page",
    })


def competition_view(ts, sid, uid, comp):
    return event("competition_viewed", ts, sid, uid, "/activities", {
        "action": "expand_details",
        "competition_id": comp["id"], "competition_name": comp["name"],
        "competition_name_en": comp["name_en"], "grade": comp["grade"], "program": comp["program"],
        "language": random.choice(["en", "th"]),
        "source": "activities_page",  # assumption: check against a real competition_viewed event
    })


def dwell(ts, sid, uid, page):
    # mostly normal reading time, sometimes a bounce, rarely a tab left open
    r = random.random()
    seconds = random.randint(0, 2) if r < 0.15 else random.randint(20000, 70000) if r > 0.95 else random.randint(5, 600)
    return event("page_dwell", ts, sid, uid, page, {
        "dwell_seconds": seconds, "page": page,
        "scroll_depth_pct": random.choice([0, 12, 54, 97, 100]),
    })


def pick(items, category, grade):
    """80% from the parent's program; abacus parents mostly look at their child's grade and the next."""
    pool = [i for i in items if i["category"] == category] if random.random() < 0.8 else items
    g_key = "grade" if "grade_n" not in items[0] else "grade_n"
    if grade is not None:
        near = [i for i in pool if i[g_key] in (grade, grade + 1)]
        if near and random.random() < 0.7:
            pool = near
    return random.choices(pool, weights=[i["weight"] for i in pool])[0]


def generate(courses, comps, parents, days, anonymous_share=0.3):
    now = datetime.now(timezone.utc)
    grades = sorted({c["grade"] for c in courses if c["grade"]})
    events = []
    for _ in range(parents):
        uid = None if random.random() < anonymous_share else f"synth-{uuid.uuid4()}"   # share of parents who never log in
        category = random.choice(list(PATH_TYPE))
        grade = random.choice(grades) if category == "abacus" else None
        sid = f"synth-{int(now.timestamp() * 1000)}-{uuid.uuid4().hex[:9]}"   # persists for days, like the app
        for _ in range(random.randint(1, 4)):                                  # visits
            ts = now - timedelta(days=random.uniform(0, days), minutes=random.uniform(0, 600))
            for _ in range(random.randint(1, 5)):                              # courses per visit
                e = course_click(ts, sid, uid, pick(courses, category, grade), random.random() < 0.5)
                events.append(e)
                if random.random() < 0.03:                                     # exact duplicate (Kafka redelivery)
                    events.append(dict(e))
                ts += timedelta(seconds=random.randint(1, 20))
                events.append(dwell(ts, sid, uid, "/courses"))
                ts += timedelta(seconds=random.randint(5, 120))
            if comps and random.random() < 0.4:                                # some visits open the activities page
                e = competition_view(ts, sid, uid, pick(comps, category, grade))
                events.append(e)
                twin = json.loads(json.dumps(e))                               # the app double-fires this event ~2 ms apart
                twin["timestamp"] = iso(ts + timedelta(milliseconds=random.randint(1, 3)))
                events.append(twin)
                ts += timedelta(seconds=random.randint(3, 30))
                events.append(dwell(ts, sid, uid, "/activities"))
    events.sort(key=lambda e: e["timestamp"])
    return events


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--parents", type=int, default=40)
    p.add_argument("--days", type=int, default=30, help="spread events over the last N days")
    p.add_argument("--seed", type=int, default=42, help="same seed = same data")
    p.add_argument("--anonymous", type=float, default=0.3,
                   help="share of parents who never log in (user_id null), 0 to 1")
    p.add_argument("--dry-run", action="store_true", help="print a summary and 5 events, send nothing")
    args = p.parse_args()

    random.seed(args.seed)
    courses, warnings = load_courses()
    comps, comp_dupes = load_competitions()
    print(f"reference data from {DATA_DIR}: {len(courses)} courses, {len(comps)} competitions "
          f"({comp_dupes} duplicate competition rows skipped)")
    for w in warnings:
        print("WARNING:", w)
    events = generate(courses, comps, args.parents, args.days, args.anonymous)
    print("events:", dict(Counter(e["event_type"] for e in events)))

    if args.dry_run:
        for e in events[:5]:
            print(json.dumps(e, ensure_ascii=False, indent=2))
        print(f"... {len(events)} events would be sent")
        return

    from confluent_kafka import Producer
    producer = Producer({"bootstrap.servers": BOOTSTRAP, "acks": "all", "linger.ms": 10})
    failed = []
    for e in events:
        key = e["user_id"] or e["session_id"]
        producer.produce(TOPIC, key=key.encode(), value=json.dumps(e, ensure_ascii=False).encode(),
                         on_delivery=lambda err, msg: failed.append(err) if err else None)
        producer.poll(0)
    producer.flush()
    print(f"sent {len(events) - len(failed)} events to {TOPIC} ({len(failed)} failed)")


if __name__ == "__main__":
    main()
