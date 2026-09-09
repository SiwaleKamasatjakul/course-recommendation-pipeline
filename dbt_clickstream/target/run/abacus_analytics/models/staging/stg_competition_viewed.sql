
  create or replace   view ABACUS_ANALYTICS.STAGING_staging.stg_competition_viewed
  
  
  
  
  as (
    -- models/staging/stg_competition_viewed.sql
-- Materialization comes from the folder default in dbt_project.yml (view)

WITH source AS (
    SELECT * 
    FROM ABACUS_ANALYTICS.RAW.clickstream_events
    WHERE EVENT_TYPE = 'competition_viewed'
),

flattened AS (
    SELECT
        SESSION_ID                          AS session_id,
        USER_ID                             AS user_id,

    -- timestamps
    "TIMESTAMP"                        AS event_ts_utc,
    CONVERT_TIMEZONE('UTC', 'Asia/Bangkok', "TIMESTAMP") AS event_ts_local,

    METADATA:action::STRING                 AS action,
    METADATA:competition_id::STRING         AS competition_id,
    METADATA:competition_name::STRING       AS competition_name,
    METADATA:competition_name_en::STRING    AS competition_name_en,
    METADATA:grade::STRING                  AS grade,
    METADATA:program::STRING                AS program,
    METADATA:language::STRING               AS language,
    METADATA:source::STRING                 AS source,
    METADATA:referer::STRING                AS referer,
    METADATA:ip::STRING                     AS ip,
    METADATA:user_agent::STRING             AS user_agent
FROM source
)

SELECT * FROM flattened
  );

