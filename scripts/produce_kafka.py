# produce_kafka.py
from confluent_kafka import Producer
import json, uuid
from datetime import datetime, timezone

producer = Producer({
    "bootstrap.servers": "localhost:29092",
    "compression.type": "gzip",
    "linger.ms": 10,
    "acks": "all",
})

def on_delivery(err, msg):
    if err:
        print(f"FAILED: {err}")

for i in range(1000):
    user_id = f"u-{i:04d}"
    event = {
        "event_id": str(uuid.uuid4()),
        "event_type": "result_clicked",
        "user_id": user_id,
        "event_ts": datetime.now(timezone.utc).isoformat(),
        "payload": {"course_id": "da-001", "position": 0},
    }
    producer.produce(
        "clickstream.events",
        key=user_id.encode(),
        value=json.dumps(event, ensure_ascii=False).encode(),
        on_delivery=on_delivery,
    )
    producer.poll(0)

producer.flush()
print("done — 1000 events sent")
