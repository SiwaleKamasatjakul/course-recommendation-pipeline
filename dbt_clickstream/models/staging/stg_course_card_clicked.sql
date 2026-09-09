-- models/staging/stg_course_card_clicked.sql
-- Materialization comes from the folder default in dbt_project.yml (view)


WITH source AS (
    SELECT *
    FROM {{ source('raw','clickstream_events')}}
    WHERE EVENT_TYPE = 'course_card_clicked'
),

flattened AS (
    SELECT
        EVENT_TYPE                              AS event_type,
        SESSION_ID                              AS session_id,
        USER_ID                                 AS user_id,
   
        -- timestamps

        "TIMESTAMP"                             AS event_ts_utc,
        CONVERT_TIMEZONE('UTC', 'Asia/Bangkok', "TIMESTAMP") AS event_ts_local,
        
        METADATA:action::STRING                 AS action,
        METADATA:course_id::STRING              AS course_id,
        METADATA:course_name::STRING            AS course_name,
        METADATA:course_name_en::STRING         AS course_name_en,
        METADATA:ip::STRING                     AS ip,
        METADATA:language::STRING               AS language,
        METADATA:path_type::STRING              AS path_type,
        METADATA:referer::STRING                AS referer,
        METADATA:source::STRING                 AS source,
        METADATA:user_agent::STRING             AS user_agent
    FROM source

)

SELECT * FROM flattened