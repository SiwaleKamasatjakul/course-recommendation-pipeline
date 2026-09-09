-- models/staging/stg_course_card_clicked.sql
-- Materialization comes from the folder default in dbt_project.yml (view)


WITH source AS (
    SELECT *
    FROM {{ source('raw','clickstream_events')}}
    WHERE EVENT_TYPE = 'page_dwell'
),

flattened AS (
SELECT
    EVENT_TYPE                        AS event_type,
    SESSION_ID                        AS session_id,
    USER_ID                           AS user_id,
    "TIMESTAMP"                    AS event_ts_utc,
    CONVERT_TIMEZONE('UTC', 'Asia/Bangkok', "TIMESTAMP") AS event_ts_local,   
     METADATA:dwell_seconds::INT       AS dwell_seconds,
    METADATA:scroll_depth_pct::INT    AS scroll_depth_pct,
    METADATA:page::STRING             AS page,
    METADATA:referer::STRING          AS referer,
    METADATA:ip::STRING               AS ip,
    METADATA:user_agent::STRING       AS user_agent
    FROM source
)

SELECT * FROM flattened