import json
import datetime
from confluent_kafka import Consumer, KafkaError
import snowflake.connector

'''
# Snowflake connection details
snowflake_conn = snowflake.connector.connect(
    user='snowflake_username',
    password='snowflake_password',
    account='snowflake_password',
    warehouse='rail_weather',
    database='rail_data',
    schema='public'
)
'''

# Initialize the Kafka consumer with SASL_SSL authentication
consumer = Consumer({
    'bootstrap.servers': 'localhost:29092',
    'auto.offset.reset': 'earliest',
    'group.id': 'debug-2',            # fresh group — 'demo' has committed offsets
# Start from the latest message
})

# Subscribe to the Kafka topic
consumer.subscribe(['clickstream.events'])

try:
    while True:
        msg = consumer.poll(1.0)

        if msg is None:
            continue
        if msg.error():
            if msg.error().code() == KafkaError._PARTITION_EOF:
                continue
            else:
                print(f'Error while consuming: {msg.error()}')
        else:
            # Parse the received message
            value = msg.value().decode('utf-8')
            print(f'{value}')

except KeyboardInterrupt:
    pass
finally:
    # Close the consumer gracefully
    consumer.close()


