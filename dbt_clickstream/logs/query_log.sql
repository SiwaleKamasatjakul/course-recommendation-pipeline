-- created_at: 2026-11-07T04:53:14.116070+00:00
-- finished_at: 2026-11-07T04:53:14.210287+00:00
-- elapsed: 94ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061202
-- desc: execute adapter call
show terse schemas in database ABACUS_DEV
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:14.212156+00:00
-- finished_at: 2026-11-07T04:53:14.359223+00:00
-- elapsed: 147ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006022a
-- desc: execute adapter call
create schema if not exists ABACUS_DEV.INTERMEDIATE
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:14.360022+00:00
-- finished_at: 2026-11-07T04:53:14.451318+00:00
-- elapsed: 91ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006022e
-- desc: execute adapter call
create schema if not exists ABACUS_DEV.MARTS
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:14.452015+00:00
-- finished_at: 2026-11-07T04:53:14.575998+00:00
-- elapsed: 123ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061206
-- desc: execute adapter call
create schema if not exists ABACUS_DEV.SEEDS
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:14.576322+00:00
-- finished_at: 2026-11-07T04:53:14.667256+00:00
-- elapsed: 90ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006120a
-- desc: execute adapter call
create schema if not exists ABACUS_DEV.STAGING
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:14.678880+00:00
-- finished_at: 2026-11-07T04:53:14.771961+00:00
-- elapsed: 93ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060232
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:14.773375+00:00
-- finished_at: 2026-11-07T04:53:14.850474+00:00
-- elapsed: 77ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060236
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:14.851842+00:00
-- finished_at: 2026-11-07T04:53:15.123158+00:00
-- elapsed: 271ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006120e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."STAGING" LIMIT 10000;
-- created_at: 2026-11-07T04:53:15.109338+00:00
-- finished_at: 2026-11-07T04:53:15.193662+00:00
-- elapsed: 84ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061212
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.171677+00:00
-- finished_at: 2026-11-07T04:53:15.379669+00:00
-- elapsed: 207ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006023e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."SEEDS" LIMIT 10000;
-- created_at: 2026-11-07T04:53:15.194682+00:00
-- finished_at: 2026-11-07T04:53:15.379669+00:00
-- elapsed: 184ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060242
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.136571+00:00
-- finished_at: 2026-11-07T04:53:15.380848+00:00
-- elapsed: 244ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061216
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_page_dwell
  
  
  
  
  as (
    -- models/staging/stg_course_card_clicked.sql
-- Materialization comes from the folder default in dbt_project.yml (view)


WITH source AS (
    SELECT *
    FROM ABACUS_ANALYTICS.RAW.CLICKSTREAM_EVENTS
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
    METADATA:user_agent::STRING       AS user_agent,
    '2026-11-07 04:53:12.168497+00:00'::timestamp_tz    AS dbt_built_at

    FROM source
)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.171769+00:00
-- finished_at: 2026-11-07T04:53:15.381730+00:00
-- elapsed: 209ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006023a
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.383294+00:00
-- finished_at: 2026-11-07T04:53:15.469689+00:00
-- elapsed: 86ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006121e
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.382472+00:00
-- finished_at: 2026-11-07T04:53:15.486+00:00
-- elapsed: 103ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060246
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.383485+00:00
-- finished_at: 2026-11-07T04:53:15.555200+00:00
-- elapsed: 171ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006121a
-- desc: execute adapter call
create table ABACUS_DEV.SEEDS.course_action_weights (ACTION text,WEIGHT float8,DESCRIPTION text)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.abacus_analytics.course_action_weights", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.383132+00:00
-- finished_at: 2026-11-07T04:53:15.590725+00:00
-- elapsed: 207ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006024a
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_course_card_clicked
  
  
  
  
  as (
    -- models/staging/stg_course_card_clicked.sql
-- Materialization comes from the folder default in dbt_project.yml (view)


WITH source AS (
    SELECT *
    FROM ABACUS_ANALYTICS.RAW.CLICKSTREAM_EVENTS
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
        METADATA:user_agent::STRING             AS user_agent,
        '2026-11-07 04:53:12.168497+00:00'::timestamp_tz    AS dbt_built_at

    FROM source

)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.557532+00:00
-- finished_at: 2026-11-07T04:53:15.640023+00:00
-- elapsed: 82ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006024e
-- desc: add_query adapter call
BEGIN;
-- created_at: 2026-11-07T04:53:15.473453+00:00
-- finished_at: 2026-11-07T04:53:15.661546+00:00
-- elapsed: 188ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061222
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_competition_viewed
  
  
  
  
  as (
    -- models/staging/stg_competition_viewed.sql
-- Materialization comes from the folder default in dbt_project.yml (view)

WITH source AS (
    SELECT * 
    FROM ABACUS_ANALYTICS.RAW.CLICKSTREAM_EVENTS
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
    METADATA:user_agent::STRING             AS user_agent,
    '2026-11-07 04:53:12.168497+00:00'::timestamp_tz    AS dbt_built_at

FROM source
)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.592155+00:00
-- finished_at: 2026-11-07T04:53:15.670110+00:00
-- elapsed: 77ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060252
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.662933+00:00
-- finished_at: 2026-11-07T04:53:15.740651+00:00
-- elapsed: 77ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006025a
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.748701+00:00
-- finished_at: 2026-11-07T04:53:16.012786+00:00
-- elapsed: 264ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_event_ts_utc.9b1def047c
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061226
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select event_ts_utc
from ABACUS_DEV.STAGING.stg_competition_viewed
where event_ts_utc is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_stg_competition_viewed_event_ts_utc.9b1def047c", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.748952+00:00
-- finished_at: 2026-11-07T04:53:16.013265+00:00
-- elapsed: 264ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_session_id.25044d0714
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006122a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select session_id
from ABACUS_DEV.STAGING.stg_competition_viewed
where session_id is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_stg_competition_viewed_session_id.25044d0714", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.748888+00:00
-- finished_at: 2026-11-07T04:53:16.039528+00:00
-- elapsed: 290ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_competition_id.aa85bbb0b9
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006025e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select competition_id
from ABACUS_DEV.STAGING.stg_competition_viewed
where competition_id is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_stg_competition_viewed_competition_id.aa85bbb0b9", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:15.640970+00:00
-- finished_at: 2026-11-07T04:53:16.159032+00:00
-- elapsed: 518ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060256
-- desc: add_query adapter call
insert overwrite into ABACUS_DEV.SEEDS.course_action_weights (ACTION, WEIGHT, DESCRIPTION) values
            ('expand_details',1.0,'Opened the course details card'),('view_course_from_path',2.0,'Went from the learning path to the course page'),('   search_click',1.5,'Clicked a course from search results');
-- created_at: 2026-11-07T04:53:16.161106+00:00
-- finished_at: 2026-11-07T04:53:16.359279+00:00
-- elapsed: 198ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006122e
-- desc: add_query adapter call
COMMIT;
-- created_at: 2026-11-07T04:53:16.370947+00:00
-- finished_at: 2026-11-07T04:53:16.553249+00:00
-- elapsed: 182ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_action_weights_weight.c6d2a82126
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061232
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select weight
from ABACUS_DEV.SEEDS.course_action_weights
where weight is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_course_action_weights_weight.c6d2a82126", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:16.371067+00:00
-- finished_at: 2026-11-07T04:53:16.553942+00:00
-- elapsed: 182ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_action_weights_action.1375e990e8
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006123a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select action
from ABACUS_DEV.SEEDS.course_action_weights
where action is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_course_action_weights_action.1375e990e8", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:16.371030+00:00
-- finished_at: 2026-11-07T04:53:16.563639+00:00
-- elapsed: 192ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_course_action_weights_action.4b4d8b2df1
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061236
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    action as unique_field,
    count(*) as n_records

from ABACUS_DEV.SEEDS.course_action_weights
where action is not null
group by action
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.unique_course_action_weights_action.4b4d8b2df1", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:16.565388+00:00
-- finished_at: 2026-11-07T04:53:16.643253+00:00
-- elapsed: 77ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060262
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:16.644702+00:00
-- finished_at: 2026-11-07T04:53:16.763149+00:00
-- elapsed: 118ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060266
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:16.763937+00:00
-- finished_at: 2026-11-07T04:53:16.854042+00:00
-- elapsed: 90ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006123e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."INTERMEDIATE" LIMIT 10000;
-- created_at: 2026-11-07T04:53:16.860382+00:00
-- finished_at: 2026-11-07T04:53:17.545325+00:00
-- elapsed: 684ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061242
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.INTERMEDIATE.int_course_interactions
    
    
    
    
    as (-- grain: one row per course_card_clicked event (exact duplicates removed)

with clicks as (
    select 
        coalesce(USER_ID, 'anon' || SESSION_ID)                 as actor_id,
        EVENT_TS_UTC                                            as event_ts_utc,                                                                 -- copy
        ACTION                                                  as action,                                                                       -- copy
        COURSE_ID                                               as offering_id,     
        SESSION_ID                                              as session_id,
        lower(trim(regexp_replace(coalesce(COURSE_NAME_EN,COURSE_NAME), '\\s*\\(.*\\)\\s*$', '')))  as course_key,
        COURSE_NAME_EN                                          as course_name_en,
        COURSE_NAME                                             as course_name_th,
        PATH_TYPE                                               as path_type,
        SOURCE                                                  as source 
    from ABACUS_DEV.STAGING.stg_course_card_clicked
    where COURSE_ID is not null 

    -- Remove duplicate 
    qualify row_number() over (
        partition by COURSE_ID,SESSION_ID,EVENT_TS_UTC,ACTION
        ORDER BY EVENT_TS_UTC ) = 1 
)

-- rule 3: look up the weight, and build the unique id
select 

    md5(cast(coalesce(cast(clicks.session_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(clicks.offering_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(clicks.action as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(clicks.event_ts_utc as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as interaction_id,   
    clicks.*,
    coalesce(course_weight.weight, 0.5) as action_weight
    from clicks
    left join ABACUS_DEV.SEEDS.course_action_weights  as course_weight
    where clicks.action = course_weight.action

    

    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:17.550123+00:00
-- finished_at: 2026-11-07T04:53:17.659374+00:00
-- elapsed: 109ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006026a
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:17.686375+00:00
-- finished_at: 2026-11-07T04:53:17.861986+00:00
-- elapsed: 175ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_interaction_id.8b507b5973
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061246
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select interaction_id
from ABACUS_DEV.INTERMEDIATE.int_course_interactions
where interaction_id is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_course_interactions_interaction_id.8b507b5973", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:17.686289+00:00
-- finished_at: 2026-11-07T04:53:17.891226+00:00
-- elapsed: 204ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_actor_id.8d54c7258e
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060272
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select actor_id
from ABACUS_DEV.INTERMEDIATE.int_course_interactions
where actor_id is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_course_interactions_actor_id.8d54c7258e", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:17.686532+00:00
-- finished_at: 2026-11-07T04:53:17.898923+00:00
-- elapsed: 212ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_int_course_interactions_interaction_id.c39047826c
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006026e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    interaction_id as unique_field,
    count(*) as n_records

from ABACUS_DEV.INTERMEDIATE.int_course_interactions
where interaction_id is not null
group by interaction_id
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.unique_int_course_interactions_interaction_id.c39047826c", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:17.686433+00:00
-- finished_at: 2026-11-07T04:53:17.953360+00:00
-- elapsed: 266ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_interactions_action__action__ref_course_action_weights_.969abd2555
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006124a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select action as from_field
    from ABACUS_DEV.INTERMEDIATE.int_course_interactions
    where action is not null
),

parent as (
    select action as to_field
    from ABACUS_DEV.SEEDS.course_action_weights
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.relationships_int_course_interactions_action__action__ref_course_action_weights_.969abd2555", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.003581+00:00
-- finished_at: 2026-11-07T04:53:18.101703+00:00
-- elapsed: 98ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_course_key.7354ea13c7
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006124e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select course_key
from ABACUS_DEV.INTERMEDIATE.int_course_interactions
where course_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_course_interactions_course_key.7354ea13c7", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.008435+00:00
-- finished_at: 2026-11-07T04:53:18.110491+00:00
-- elapsed: 102ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_action_weight.e82ac37955
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060276
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select action_weight
from ABACUS_DEV.INTERMEDIATE.int_course_interactions
where action_weight is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_course_interactions_action_weight.e82ac37955", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.112889+00:00
-- finished_at: 2026-11-07T04:53:18.187395+00:00
-- elapsed: 74ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061252
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.112727+00:00
-- finished_at: 2026-11-07T04:53:18.188715+00:00
-- elapsed: 75ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006027a
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.112980+00:00
-- finished_at: 2026-11-07T04:53:18.202502+00:00
-- elapsed: 89ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061256
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.189477+00:00
-- finished_at: 2026-11-07T04:53:18.275514+00:00
-- elapsed: 86ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006125a
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.191024+00:00
-- finished_at: 2026-11-07T04:53:18.277911+00:00
-- elapsed: 86ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006125e
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.203936+00:00
-- finished_at: 2026-11-07T04:53:18.285906+00:00
-- elapsed: 81ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061262
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.281691+00:00
-- finished_at: 2026-11-07T04:53:18.694185+00:00
-- elapsed: 412ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060282
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
    
    
    
    
    as (with recent_clicks as (

    select 
    ACTOR_ID                        as actor_id,
    COURSE_KEY                      as course,
    ACTION                          as action,
    ACTION_WEIGHT                   as action_weight,
    EVENT_TS_UTC                    as event_ts_utc,
    power(
        0.5,
        datediff('hour', event_ts_utc, CURRENT_TIMESTAMP()) / 24.0 / 
        14    
        ) as decay
    from ABACUS_DEV.INTERMEDIATE.int_course_interactions
    where event_ts_utc >= dateadd('day', -90, CURRENT_TIMESTAMP  )


)


SELECT
    actor_id,
    course,
    count(*)                                            as clicks,
    count_if(action = 'view_course_from_path')          as path_views,
    count_if(action = 'expand_details')                 as detail_expand,
    sum(action_weight * decay)                          as affinity_score,
    min(event_ts_utc)                                   as first_click_at,
    max(event_ts_utc)                                   as last_click_at
    from recent_clicks
    group by actor_id,course
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.281404+00:00
-- finished_at: 2026-11-07T04:53:18.715781+00:00
-- elapsed: 434ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006027e
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.INTERMEDIATE.int_course_catalog
    
    
    
    
    as (

with course_catalog as (
    
    select 
    COURSE_KEY                                          as course_key,
    COUNT(DISTINCT OFFERING_ID)                         as offering_count,
    COUNT(*)                                            as clicks,
    MAX_BY(COURSE_NAME_EN, EVENT_TS_UTC)                as course_name_en,
    MAX_BY(COURSE_NAME_TH, EVENT_TS_UTC)                as course_name_th,
    coalesce(
        max(path_type),
        case when course_key like 'abacus%' then 'abacus' end 
    )                                                   as program,
    min(EVENT_TS_UTC)                                   as min_event_ts_utc,
    max(EVENT_TS_UTC)                                   as max_event_ts_utc,
    try_to_number(regexp_substr(COURSE_KEY, 'grade\\s*(\\d+)', 1, 1, 'e', 1)) as grade,
    from ABACUS_DEV.INTERMEDIATE.int_course_interactions
    group by course_key




)

select * from course_catalog
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.294261+00:00
-- finished_at: 2026-11-07T04:53:18.748950+00:00
-- elapsed: 454ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061266
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.INTERMEDIATE.int_course_popularity
    
    
    
    
    as (

with recent as (
    select * 
    from ABACUS_DEV.INTERMEDIATE.int_course_interactions
    where event_ts_utc >= dateadd('day', - 30, CURRENT_TIMESTAMP())
),



per_course as (
    select 
        course_key                      as course_key,
        COUNT(DISTINCT ACTOR_ID)        as parent_count,
        COUNT(*)                        as clicks,
        SUM(ACTION_WEIGHT)              as weighted_clicks,
        MAX(EVENT_TS_UTC)               as last_click_at
    
    from recent
    group by course_key


)



select
    *,
    rank() over (order by parent_count desc, weighted_clicks desc) as popularity_rank
from per_course
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.695703+00:00
-- finished_at: 2026-11-07T04:53:18.769182+00:00
-- elapsed: 73ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060286
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.717654+00:00
-- finished_at: 2026-11-07T04:53:18.793373+00:00
-- elapsed: 75ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006028a
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.750479+00:00
-- finished_at: 2026-11-07T04:53:18.852025+00:00
-- elapsed: 101ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006028e
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.777294+00:00
-- finished_at: 2026-11-07T04:53:18.921161+00:00
-- elapsed: 143ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_course.e2ac6559e0
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060296
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select course
from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
where course is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_actor_course_affinity_course.e2ac6559e0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.777190+00:00
-- finished_at: 2026-11-07T04:53:18.922590+00:00
-- elapsed: 145ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_affinity_score.4754ad9c06
-- query_id: 01c83ea5-000e-2967-0002-ff9e00060292
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select affinity_score
from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
where affinity_score is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_actor_course_affinity_affinity_score.4754ad9c06", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.777195+00:00
-- finished_at: 2026-11-07T04:53:18.927502+00:00
-- elapsed: 150ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_unique_combination_of_columns_int_actor_course_affinity_actor_id__course.ab32ed82c2
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006029a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  





with validation_errors as (

    select
        actor_id, course
    from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
    group by actor_id, course
    having count(*) > 1

)

select *
from validation_errors



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.dbt_utils_unique_combination_of_columns_int_actor_course_affinity_actor_id__course.ab32ed82c2", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.777320+00:00
-- finished_at: 2026-11-07T04:53:18.946976+00:00
-- elapsed: 169ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_actor_id.5e3a9e26ef
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006126a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select actor_id
from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
where actor_id is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_actor_course_affinity_actor_id.5e3a9e26ef", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.949009+00:00
-- finished_at: 2026-11-07T04:53:27.284765+00:00
-- elapsed: 8.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c83ea5-000e-2967-0002-ff9e0006029e
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:27.286954+00:00
-- finished_at: 2026-11-07T04:53:27.371460+00:00
-- elapsed: 84ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602a2
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:27.383045+00:00
-- finished_at: 2026-11-07T04:53:27.904577+00:00
-- elapsed: 521ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061272
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
    
    
    
    
    as (with actor_courses as (

    select actor_id, 
            course as course_key
    from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity

),

pairs as (

    select 
     a.actor_id,
     a.course_key,
     b.course_key as other_course_key
     from actor_courses as a 
     join actor_courses as b 
        on a.actor_id = b.actor_id
        and a.course_key <> b.course_key


)

select 
    course_key,
    other_course_key,
    count(DISTINCT actor_id) as co_actor_count
from pairs
group by course_key,other_course_key
HAVING count(DISTINCT actor_id) >= 2
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:27.906020+00:00
-- finished_at: 2026-11-07T04:53:27.999141+00:00
-- elapsed: 93ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061276
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:28.011823+00:00
-- finished_at: 2026-11-07T04:53:28.159045+00:00
-- elapsed: 147ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_other_course_key.992158ab8e
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006127e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select other_course_key
from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
where other_course_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_course_coocurrence_other_course_key.992158ab8e", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:28.011970+00:00
-- finished_at: 2026-11-07T04:53:28.169281+00:00
-- elapsed: 157ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_co_actor_count.12188e68ce
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602ae
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select co_actor_count
from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
where co_actor_count is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_course_coocurrence_co_actor_count.12188e68ce", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:28.011996+00:00
-- finished_at: 2026-11-07T04:53:28.170660+00:00
-- elapsed: 158ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_expression_is_true_int_course_coocurrence_course_key_other_course_key.21c6673769
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006127a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence

where not(course_key <> other_course_key)


  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.dbt_utils_expression_is_true_int_course_coocurrence_course_key_other_course_key.21c6673769", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:28.013785+00:00
-- finished_at: 2026-11-07T04:53:28.181773+00:00
-- elapsed: 167ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_course_key.2eec6f118c
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602aa
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select course_key
from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
where course_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_int_course_coocurrence_course_key.2eec6f118c", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:28.012332+00:00
-- finished_at: 2026-11-07T04:53:28.256483+00:00
-- elapsed: 244ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_coocurrence_course_key__course_key__ref_int_course_catalog_.2012314292
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602a6
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select course_key as from_field
    from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
    where course_key is not null
),

parent as (
    select course_key as to_field
    from ABACUS_DEV.INTERMEDIATE.int_course_catalog
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.relationships_int_course_coocurrence_course_key__course_key__ref_int_course_catalog_.2012314292", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:28.451443+00:00
-- finished_at: 2026-11-07T04:53:28.563270+00:00
-- elapsed: 111ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_unique_combination_of_columns_int_course_coocurrence_course_key__other_course_key.81d740470b
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602b2
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  





with validation_errors as (

    select
        course_key, other_course_key
    from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
    group by course_key, other_course_key
    having count(*) > 1

)

select *
from validation_errors



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.dbt_utils_unique_combination_of_columns_int_course_coocurrence_course_key__other_course_key.81d740470b", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:28.422139+00:00
-- finished_at: 2026-11-07T04:53:28.584568+00:00
-- elapsed: 162ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_coocurrence_other_course_key__course_key__ref_int_course_catalog_.a490c6181d
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061282
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select other_course_key as from_field
    from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
    where other_course_key is not null
),

parent as (
    select course_key as to_field
    from ABACUS_DEV.INTERMEDIATE.int_course_catalog
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.relationships_int_course_coocurrence_other_course_key__course_key__ref_int_course_catalog_.a490c6181d", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:18.799543+00:00
-- finished_at: 2026-11-07T04:53:35.090166+00:00
-- elapsed: 16.3s
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_actor_course_affinity_course__COURSE_KEY__ref_int_course_catalog_.d6cf4f8052
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006126e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select course as from_field
    from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
    where course is not null
),

parent as (
    select COURSE_KEY as to_field
    from ABACUS_DEV.INTERMEDIATE.int_course_catalog
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.relationships_int_actor_course_affinity_course__COURSE_KEY__ref_int_course_catalog_.d6cf4f8052", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:35.093436+00:00
-- finished_at: 2026-11-07T04:53:35.236546+00:00
-- elapsed: 143ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061286
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:35.238492+00:00
-- finished_at: 2026-11-07T04:53:35.359527+00:00
-- elapsed: 121ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602b6
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:35.360695+00:00
-- finished_at: 2026-11-07T04:53:35.467111+00:00
-- elapsed: 106ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602ba
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."MARTS" LIMIT 10000;
-- created_at: 2026-11-07T04:53:35.471455+00:00
-- finished_at: 2026-11-07T04:53:36.188623+00:00
-- elapsed: 717ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006128a
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.MARTS.course_recommendations
    
    
    
    
    as (

with affinity as (

    select 
        actor_id, 
        course as course_key, 
        affinity_score
    from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity

),


-- 1. "parents who liked what you like also clicked..."
similar as (

    select 
        a.actor_id,
        c.other_course_key                              as course_key,
        sum(a.affinity_score * c.co_actor_count)        as score,
        'similar_parents'                               as reason,
        1                                               as priority
    
    from affinity as a 
    join ABACUS_DEV.INTERMEDIATE.int_course_coocurrence as c 
        on a.course_key = c.course_key
        group by a.actor_id, c.other_course_key


),

-- 2. popular courses as backup, offered to every parent
popular as (

    select 
        actors.actor_id,
        p.course_key,
        1.0 / p.popularity_rank             as score,
        'popular'                           as reason,
        2                                   as priority
    from (select distinct actor_id from affinity) as actors
    cross join ABACUS_DEV.INTERMEDIATE.int_course_popularity as p
),

candidates as (

    select * from similar
    union all 
    select * from popular


),

-- 3. Remove courses the parent already clicked 

not_seen as (

    select cand.*
    from candidates as cand 
    left join affinity as seen
         on cand.actor_id = seen.actor_id
         and cand.course_key = seen.course_key
    where seen.course_key is null


),

-- a course can come from both sources → keep the better one
one_per_course as (

    select *
    from not_seen
    qualify row_number() over (
        partition by actor_id, course_key
        order by priority, score desc
    ) = 1 

),

-- 4. rank per parent 
ranked as (

    select 
        *,
        row_number() over (
            partition by actor_id
            order by priority, score desc 

        ) as recommendation_rank
    from one_per_course 

)


select 
    r.actor_id,
    r.recommendation_rank,
    r.course_key,
    cat.course_name_en,
    cat.course_name_th,
    cat.program,
    r.score,
    r.reason,
    '2026-11-07 04:53:12.168497+00:00'::timestamp_tz as generated_at
from ranked as r 
left join ABACUS_DEV.INTERMEDIATE.int_course_catalog as cat 
    on r.course_key = cat.course_key
where r.recommendation_rank <= 5
    
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:36.189910+00:00
-- finished_at: 2026-11-07T04:53:36.279992+00:00
-- elapsed: 90ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006128e
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:36.285162+00:00
-- finished_at: 2026-11-07T04:53:36.357434+00:00
-- elapsed: 72ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602be
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:36.285232+00:00
-- finished_at: 2026-11-07T04:53:36.368927+00:00
-- elapsed: 83ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602c2
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:36.358665+00:00
-- finished_at: 2026-11-07T04:53:36.505315+00:00
-- elapsed: 146ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602c6
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:36.369903+00:00
-- finished_at: 2026-11-07T04:53:36.509328+00:00
-- elapsed: 139ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061292
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:36.508868+00:00
-- finished_at: 2026-11-07T04:53:36.939120+00:00
-- elapsed: 430ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c83ea5-000e-296d-0002-ff9e00061296
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.MARTS.course_recommendations_history
    
    
    
    
    as (


select * from ABACUS_DEV.MARTS.course_recommendations
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:36.511968+00:00
-- finished_at: 2026-11-07T04:53:37.008645+00:00
-- elapsed: 496ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006129a
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.MARTS.reco_run_metrics
    
    
    
    
    as (

with recs as (

    select actor_id, course_key, reason
    from ABACUS_DEV.MARTS.course_recommendations

),

summary as (

    select 
        count(distinct actor_id)                        as actors,
        count(*)                                        as rec_rows,
        count_if(reason = 'similar_parents')            as personal_rows,
        count(distinct course_key)                      as courses_recommended
    from recs


),

catalog as (

    select count(*) as catalog_size
    from ABACUS_DEV.INTERMEDIATE.int_course_catalog

),

clicks as (

    select 
        count(*)                as interactions_total,
        max(event_ts_utc)       as newest_click_at
    from ABACUS_DEV.INTERMEDIATE.int_course_interactions


)

select
    '2026-11-07 04:53:12.168497+00:00'::timestamp_tz                         as run_at,
    s.actors,
    s.rec_rows,
    round(s.rec_rows / nullif(s.actors, 0), 2)                   as avg_recs_per_actor,
    round(s.personal_rows / nullif(s.rec_rows, 0), 3)            as pct_personal,
    s.courses_recommended,
    cat.catalog_size,
    round(s.courses_recommended / nullif(cat.catalog_size, 0), 3) as catalog_coverage,
    c.interactions_total,
    c.newest_click_at,
    datediff('minute', c.newest_click_at, sysdate())             as data_lag_minutes
from summary as s
cross join catalog as cat
cross join clicks as c
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:36.940593+00:00
-- finished_at: 2026-11-07T04:53:37.015705+00:00
-- elapsed: 75ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602ca
-- desc: execute adapter call
drop view if exists ABACUS_DEV.MARTS.course_recommendations_history__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.017045+00:00
-- finished_at: 2026-11-07T04:53:37.213304+00:00
-- elapsed: 196ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c83ea5-000e-296d-0002-ff9e0006129e
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.010069+00:00
-- finished_at: 2026-11-07T04:53:37.215135+00:00
-- elapsed: 205ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602ce
-- desc: execute adapter call
drop view if exists ABACUS_DEV.MARTS.reco_run_metrics__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.219215+00:00
-- finished_at: 2026-11-07T04:53:37.377597+00:00
-- elapsed: 158ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_recommendations_history_generated_at.7494d185fc
-- query_id: 01c83ea5-000e-296d-0002-ff9e000612a2
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select generated_at
from ABACUS_DEV.MARTS.course_recommendations_history
where generated_at is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_course_recommendations_history_generated_at.7494d185fc", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.379202+00:00
-- finished_at: 2026-11-07T04:53:37.467479+00:00
-- elapsed: 88ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602d6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.470560+00:00
-- finished_at: 2026-11-07T04:53:37.566411+00:00
-- elapsed: 95ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c83ea5-000e-296d-0002-ff9e000612a6
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.216631+00:00
-- finished_at: 2026-11-07T04:53:37.622945+00:00
-- elapsed: 406ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602d2
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.569872+00:00
-- finished_at: 2026-11-07T04:53:37.917514+00:00
-- elapsed: 347ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c83ea5-000e-296d-0002-ff9e000612aa
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.MARTS.reco_hit_rate_daily
    
    
    
    
    as (-- "Of the parents we recommended to on day D,
--  how many clicked one of their recommended courses on day D+1?"

with last_run_per_day as (

    select
        generated_at::date as reco_date,
        max(generated_at)  as generated_at
    from ABACUS_DEV.MARTS.course_recommendations_history
    group by 1

),

recs as (

    select h.actor_id, h.course_key, d.reco_date
    from ABACUS_DEV.MARTS.course_recommendations_history as h
    join last_run_per_day as d
        on h.generated_at = d.generated_at

),

clicks as (

    select distinct
        actor_id,
        course_key,
        event_ts_utc::date as click_date
    from ABACUS_DEV.INTERMEDIATE.int_course_interactions

),

per_actor as (

    select
        r.reco_date,
        r.actor_id,
        max(iff(c.actor_id is not null, 1, 0)) as clicked_a_rec
    from recs as r
    left join clicks as c
        on  r.actor_id   = c.actor_id
        and r.course_key = c.course_key
        and c.click_date = dateadd('day', 1, r.reco_date)
    group by r.reco_date, r.actor_id

)

select
    reco_date,
    count(*)                                         as actors_with_recs,
    sum(clicked_a_rec)                               as actors_who_clicked_a_rec,
    round(sum(clicked_a_rec) / nullif(count(*), 0), 3) as hit_rate
from per_actor
where reco_date < sysdate()::date      -- today's "next day" hasn't happened yet
group by reco_date

    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.918922+00:00
-- finished_at: 2026-11-07T04:53:38.066085+00:00
-- elapsed: 147ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c83ea5-000e-296d-0002-ff9e000612b6
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.637486+00:00
-- finished_at: 2026-11-07T04:53:38.102179+00:00
-- elapsed: 464ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_reco_run_metrics_run_at.231c895403
-- query_id: 01c83ea5-000e-296d-0002-ff9e000612b2
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    run_at as unique_field,
    count(*) as n_records

from ABACUS_DEV.MARTS.reco_run_metrics
where run_at is not null
group by run_at
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.unique_reco_run_metrics_run_at.231c895403", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.637631+00:00
-- finished_at: 2026-11-07T04:53:38.107235+00:00
-- elapsed: 469ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_run_metrics_run_at.9ee7cf559a
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602da
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select run_at
from ABACUS_DEV.MARTS.reco_run_metrics
where run_at is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_reco_run_metrics_run_at.9ee7cf559a", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:37.638110+00:00
-- finished_at: 2026-11-07T04:53:38.119933+00:00
-- elapsed: 481ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_run_metrics_actors.a432589070
-- query_id: 01c83ea5-000e-296d-0002-ff9e000612ae
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select actors
from ABACUS_DEV.MARTS.reco_run_metrics
where actors is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_reco_run_metrics_actors.a432589070", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:38.070981+00:00
-- finished_at: 2026-11-07T04:53:38.267249+00:00
-- elapsed: 196ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_reco_hit_rate_daily_reco_date.c7b671dbc1
-- query_id: 01c83ea5-000e-296d-0002-ff9e000612be
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    reco_date as unique_field,
    count(*) as n_records

from ABACUS_DEV.MARTS.reco_hit_rate_daily
where reco_date is not null
group by reco_date
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.unique_reco_hit_rate_daily_reco_date.c7b671dbc1", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:38.072494+00:00
-- finished_at: 2026-11-07T04:53:38.268185+00:00
-- elapsed: 195ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_accepted_range_reco_hit_rate_daily_hit_rate__1__0.aa7d8e5ab2
-- query_id: 01c83ea5-000e-2967-0002-ff9e000602de
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

with meet_condition as(
  select *
  from ABACUS_DEV.MARTS.reco_hit_rate_daily
),

validation_errors as (
  select *
  from meet_condition
  where
    -- never true, defaults to an empty result set. Exists to ensure any combo of the `or` clauses below succeeds
    1 = 2
    -- records with a value >= min_value are permitted. The `not` flips this to find records that don't meet the rule.
    or not hit_rate >= 0
    -- records with a value <= max_value are permitted. The `not` flips this to find records that don't meet the rule.
    or not hit_rate <= 1
)

select *
from validation_errors


  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.dbt_utils_accepted_range_reco_hit_rate_daily_hit_rate__1__0.aa7d8e5ab2", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-07T04:53:38.072425+00:00
-- finished_at: 2026-11-07T04:53:38.268804+00:00
-- elapsed: 196ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_hit_rate_daily_reco_date.177c9445d3
-- query_id: 01c83ea5-000e-296d-0002-ff9e000612ba
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select reco_date
from ABACUS_DEV.MARTS.reco_hit_rate_daily
where reco_date is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.abacus_analytics.not_null_reco_hit_rate_daily_reco_date.177c9445d3", "profile_name": "abacus", "target_name": "dev"} */;
