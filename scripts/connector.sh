#!/usr/bin/env bash
# scripts/connector.sh — manage the Snowflake sink connector
#
#   ./scripts/connector.sh deploy     create it (fails if it already exists)
#   ./scripts/connector.sh update     change config on a running connector
#   ./scripts/connector.sh status     health of the connector and its tasks
#   ./scripts/connector.sh validate   check config WITHOUT creating anything
#   ./scripts/connector.sh restart    restart failed tasks
#   ./scripts/connector.sh delete     remove it (Kafka offsets are retained)
#   ./scripts/connector.sh logs       tail the worker logs

set -euo pipefail

CONNECT_URL="${CONNECT_URL:-http://localhost:8083}"
CONFIG_FILE="$(dirname "$0")/../connectors/snowflake-sink-v4.json"
NAME="$(jq -r .name "$CONFIG_FILE")"

case "${1:-status}" in
  deploy)
    curl -fsS -X POST -H "Content-Type: application/json" \
         --data @"$CONFIG_FILE" "$CONNECT_URL/connectors" | jq
    ;;

  update)
    # PUT /config takes the inner object only, not the {name, config} wrapper.
    jq .config "$CONFIG_FILE" | \
      curl -fsS -X PUT -H "Content-Type: application/json" \
           --data @- "$CONNECT_URL/connectors/$NAME/config" | jq
    ;;

  validate)
    # Catches leftover v3 properties before anything is created.
    # The validate endpoint wants `name` INSIDE the config object, unlike the
    # create endpoint which takes it as a sibling — hence the merge.
    jq '.config + {name: .name}' "$CONFIG_FILE" | \
      curl -fsS -X PUT -H "Content-Type: application/json" --data @- \
        "$CONNECT_URL/connector-plugins/SnowflakeStreamingSinkConnector/config/validate" \
      | jq '{errors: .error_count,
             messages: [.configs[].value | select(.errors | length > 0)
                        | {name, errors}]}'
    ;;

  status)
    # A connector can report RUNNING while individual tasks are FAILED --
    # this surfaces both, plus the stack trace when something died.
    # Retries because the status store lags creation by a second or two,
    # returning 404 if queried immediately after deploy.
    for i in 1 2 3 4 5; do
      if out=$(curl -fsS "$CONNECT_URL/connectors/$NAME/status" 2>/dev/null); then
        echo "$out" | jq '{name, state: .connector.state,
                           tasks: [.tasks[] | {id, state,
                                               trace: (.trace // "")[0:600]}]}'
        exit 0
      fi
      echo "status not ready yet, retrying ($i/5)..." >&2
      sleep 2
    done
    echo "could not read status for $NAME after 5 attempts" >&2
    exit 1
    ;;

  restart)
    curl -fsS -X POST "$CONNECT_URL/connectors/$NAME/restart?includeTasks=true&onlyFailed=true"
    echo "restarted failed tasks"
    ;;

  delete)
    curl -fsS -X DELETE "$CONNECT_URL/connectors/$NAME"
    echo "deleted $NAME"
    ;;

  logs)
    docker logs -f connect
    ;;

  *)
    sed -n '2,12p' "$0"
    exit 1
    ;;
esac