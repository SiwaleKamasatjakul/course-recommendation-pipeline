-- created_at: 2026-09-09T05:45:51.613052+00:00
-- finished_at: 2026-09-09T05:45:51.751200+00:00
-- elapsed: 138ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c6f2f9-3203-529e-0018-1dbe000dd4c2
-- desc: execute adapter call
show terse schemas in database ABACUS_ANALYTICS
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-09-09T05:45:51.757684+00:00
-- finished_at: 2026-09-09T05:45:51.892776+00:00
-- elapsed: 135ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c6f2f9-3203-5166-0018-1dbe000db4c6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_ANALYTICS"."STAGING_STAGING" LIMIT 10000;
-- created_at: 2026-09-09T05:45:51.894958+00:00
-- finished_at: 2026-09-09T05:45:52.889385+00:00
-- elapsed: 994ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c6f2f9-3203-52a2-0018-1dbe000d7676
-- desc: execute adapter call
create or replace   view ABACUS_ANALYTICS.STAGING_staging.stg_page_dwell
  
  
  
  
  as (
    -- models/staging/stg_course_card_clicked.sql
-- Materialization comes from the folder default in dbt_project.yml (view)


WITH source AS (
    SELECT *
    FROM ABACUS_ANALYTICS.RAW.clickstream_events
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
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
