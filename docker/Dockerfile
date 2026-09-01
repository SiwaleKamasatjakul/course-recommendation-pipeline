# docker/Dockerfile.connect
#
# Kafka Connect worker with the Snowflake sink connector v4 baked in.
# Building it into the image (rather than installing at container start) keeps
# startup fast and makes the connector version explicit and reproducible.

FROM confluentinc/cp-kafka-connect:7.6.0

# The fat JAR plus its Bouncy Castle crypto dependencies, which the connector
# needs for key-pair authentication. confluent-hub pulls both.
RUN confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:latest

# Pin instead, once you know the version you want:
# RUN confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:4.0.0