-- created_at: 2026-11-09T03:52:03.220957+00:00
-- finished_at: 2026-11-09T03:52:03.283309+00:00
-- elapsed: 62ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4d2
-- desc: execute adapter call
show terse schemas in database ABACUS_DEV
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.310943+00:00
-- finished_at: 2026-11-09T03:52:03.364812+00:00
-- elapsed: 53ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3ba
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.366981+00:00
-- finished_at: 2026-11-09T03:52:03.413503+00:00
-- elapsed: 46ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3be
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.414555+00:00
-- finished_at: 2026-11-09T03:52:03.481694+00:00
-- elapsed: 67ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3c2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."STAGING" LIMIT 10000;
-- created_at: 2026-11-09T03:52:03.484081+00:00
-- finished_at: 2026-11-09T03:52:03.533416+00:00
-- elapsed: 49ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4d6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.486131+00:00
-- finished_at: 2026-11-09T03:52:03.539720+00:00
-- elapsed: 53ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3c6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.488850+00:00
-- finished_at: 2026-11-09T03:52:03.550366+00:00
-- elapsed: 61ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3ca
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."SEEDS" LIMIT 10000;
-- created_at: 2026-11-09T03:52:03.534632+00:00
-- finished_at: 2026-11-09T03:52:03.581486+00:00
-- elapsed: 46ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4de
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.540963+00:00
-- finished_at: 2026-11-09T03:52:03.589096+00:00
-- elapsed: 48ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4e2
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.552499+00:00
-- finished_at: 2026-11-09T03:52:03.607564+00:00
-- elapsed: 55ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3ce
-- desc: add_query adapter call
BEGIN;
-- created_at: 2026-11-09T03:52:03.487620+00:00
-- finished_at: 2026-11-09T03:52:03.674090+00:00
-- elapsed: 186ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4da
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_course_card_clicked
  
  
  
  
  as (
    -- models/staging/stg_course_card_clicked.sql
-- Materialization comes from the folder default in dbt_project.yml (view)


WITH source AS (
    SELECT *
    FROM ABACUS_ANALYTICS.RAW.CLICKSTREAM_EVENTS_BENCH
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
        '2026-11-09 03:52:02.723628+00:00'::timestamp_tz    AS dbt_built_at

    FROM source

)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.675026+00:00
-- finished_at: 2026-11-09T03:52:03.723287+00:00
-- elapsed: 48ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4ea
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.584700+00:00
-- finished_at: 2026-11-09T03:52:03.755723+00:00
-- elapsed: 171ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3d2
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_competition_viewed
  
  
  
  
  as (
    -- models/staging/stg_competition_viewed.sql
-- Materialization comes from the folder default in dbt_project.yml (view)

WITH source AS (
    SELECT * 
    FROM ABACUS_ANALYTICS.RAW.CLICKSTREAM_EVENTS_BENCH
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
    '2026-11-09 03:52:02.723628+00:00'::timestamp_tz    AS dbt_built_at

FROM source
)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.591595+00:00
-- finished_at: 2026-11-09T03:52:03.756695+00:00
-- elapsed: 165ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3d6
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_page_dwell
  
  
  
  
  as (
    -- models/staging/stg_course_card_clicked.sql
-- Materialization comes from the folder default in dbt_project.yml (view)


WITH source AS (
    SELECT *
    FROM ABACUS_ANALYTICS.RAW.CLICKSTREAM_EVENTS_BENCH
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
    '2026-11-09 03:52:02.723628+00:00'::timestamp_tz    AS dbt_built_at

    FROM source
)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.757654+00:00
-- finished_at: 2026-11-09T03:52:03.802189+00:00
-- elapsed: 44ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3da
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.756769+00:00
-- finished_at: 2026-11-09T03:52:03.804324+00:00
-- elapsed: 47ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4ee
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:03.608339+00:00
-- finished_at: 2026-11-09T03:52:03.896211+00:00
-- elapsed: 287ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4e6
-- desc: add_query adapter call
insert overwrite into ABACUS_DEV.SEEDS.course_action_weights (ACTION, WEIGHT, DESCRIPTION) values
            ('expand_details',1.0,'Opened the course details card'),('view_course_from_path',2.0,'Went from the learning path to the course page'),('   search_click',1.5,'Clicked a course from search results');
-- created_at: 2026-11-09T03:52:03.810630+00:00
-- finished_at: 2026-11-09T03:52:03.924708+00:00
-- elapsed: 114ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_event_ts_utc.9b1def047c
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3de
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
-- created_at: 2026-11-09T03:52:03.810706+00:00
-- finished_at: 2026-11-09T03:52:03.968544+00:00
-- elapsed: 157ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_session_id.25044d0714
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4f2
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
-- created_at: 2026-11-09T03:52:03.810564+00:00
-- finished_at: 2026-11-09T03:52:03.978984+00:00
-- elapsed: 168ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_competition_id.aa85bbb0b9
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4f6
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
-- created_at: 2026-11-09T03:52:03.897816+00:00
-- finished_at: 2026-11-09T03:52:04.057962+00:00
-- elapsed: 160ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4fa
-- desc: add_query adapter call
COMMIT;
-- created_at: 2026-11-09T03:52:04.065464+00:00
-- finished_at: 2026-11-09T03:52:04.154646+00:00
-- elapsed: 89ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_course_action_weights_action.4b4d8b2df1
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e4fe
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
-- created_at: 2026-11-09T03:52:04.065100+00:00
-- finished_at: 2026-11-09T03:52:04.169705+00:00
-- elapsed: 104ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_action_weights_weight.c6d2a82126
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3e6
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
-- created_at: 2026-11-09T03:52:04.065237+00:00
-- finished_at: 2026-11-09T03:52:04.171477+00:00
-- elapsed: 106ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_action_weights_action.1375e990e8
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3e2
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
-- created_at: 2026-11-09T03:52:04.173235+00:00
-- finished_at: 2026-11-09T03:52:04.217312+00:00
-- elapsed: 44ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e502
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:04.218342+00:00
-- finished_at: 2026-11-09T03:52:04.264167+00:00
-- elapsed: 45ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3ea
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:04.264921+00:00
-- finished_at: 2026-11-09T03:52:04.328040+00:00
-- elapsed: 63ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3ee
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."INTERMEDIATE" LIMIT 10000;
-- created_at: 2026-11-09T03:52:04.330440+00:00
-- finished_at: 2026-11-09T03:52:05.052818+00:00
-- elapsed: 722ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e506
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
-- created_at: 2026-11-09T03:52:05.056135+00:00
-- finished_at: 2026-11-09T03:52:05.114610+00:00
-- elapsed: 58ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e50a
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:05.124409+00:00
-- finished_at: 2026-11-09T03:52:05.257785+00:00
-- elapsed: 133ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_interaction_id.8b507b5973
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e50e
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
-- created_at: 2026-11-09T03:52:05.126919+00:00
-- finished_at: 2026-11-09T03:52:05.259096+00:00
-- elapsed: 132ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_course_key.7354ea13c7
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3f2
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
-- created_at: 2026-11-09T03:52:05.127020+00:00
-- finished_at: 2026-11-09T03:52:05.259097+00:00
-- elapsed: 132ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_action_weight.e82ac37955
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e512
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
-- created_at: 2026-11-09T03:52:05.126958+00:00
-- finished_at: 2026-11-09T03:52:05.307431+00:00
-- elapsed: 180ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_interactions_action__action__ref_course_action_weights_.969abd2555
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3f6
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
-- created_at: 2026-11-09T03:52:05.299248+00:00
-- finished_at: 2026-11-09T03:52:05.377196+00:00
-- elapsed: 77ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_actor_id.8d54c7258e
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e51a
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
-- created_at: 2026-11-09T03:52:05.295492+00:00
-- finished_at: 2026-11-09T03:52:05.392879+00:00
-- elapsed: 97ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_int_course_interactions_interaction_id.c39047826c
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e516
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
-- created_at: 2026-11-09T03:52:05.394743+00:00
-- finished_at: 2026-11-09T03:52:05.454354+00:00
-- elapsed: 59ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f402
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:05.394801+00:00
-- finished_at: 2026-11-09T03:52:05.457311+00:00
-- elapsed: 62ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3fe
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:05.394837+00:00
-- finished_at: 2026-11-09T03:52:05.457311+00:00
-- elapsed: 62ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f3fa
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:05.455341+00:00
-- finished_at: 2026-11-09T03:52:05.503020+00:00
-- elapsed: 47ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f406
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:05.458511+00:00
-- finished_at: 2026-11-09T03:52:05.504595+00:00
-- elapsed: 46ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e522
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:05.458499+00:00
-- finished_at: 2026-11-09T03:52:05.504618+00:00
-- elapsed: 46ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e51e
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:05.506999+00:00
-- finished_at: 2026-11-09T03:52:06.001839+00:00
-- elapsed: 494ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f40a
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
-- created_at: 2026-11-09T03:52:06.003757+00:00
-- finished_at: 2026-11-09T03:52:06.068851+00:00
-- elapsed: 65ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f40e
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:06.079519+00:00
-- finished_at: 2026-11-09T03:52:06.201692+00:00
-- elapsed: 122ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_actor_id.5e3a9e26ef
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f412
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
-- created_at: 2026-11-09T03:52:06.079578+00:00
-- finished_at: 2026-11-09T03:52:06.203268+00:00
-- elapsed: 123ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_affinity_score.4754ad9c06
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f41a
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
-- created_at: 2026-11-09T03:52:06.078592+00:00
-- finished_at: 2026-11-09T03:52:06.210121+00:00
-- elapsed: 131ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_course.e2ac6559e0
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e52e
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
-- created_at: 2026-11-09T03:52:06.078950+00:00
-- finished_at: 2026-11-09T03:52:06.215075+00:00
-- elapsed: 136ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_unique_combination_of_columns_int_actor_course_affinity_actor_id__course.ab32ed82c2
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f416
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
-- created_at: 2026-11-09T03:52:05.506999+00:00
-- finished_at: 2026-11-09T03:52:06.229087+00:00
-- elapsed: 722ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e526
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
-- created_at: 2026-11-09T03:52:05.506999+00:00
-- finished_at: 2026-11-09T03:52:06.255072+00:00
-- elapsed: 748ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e52a
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
-- created_at: 2026-11-09T03:52:06.217165+00:00
-- finished_at: 2026-11-09T03:52:06.259015+00:00
-- elapsed: 41ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e532
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:06.230187+00:00
-- finished_at: 2026-11-09T03:52:06.281244+00:00
-- elapsed: 51ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f41e
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:06.260060+00:00
-- finished_at: 2026-11-09T03:52:06.302976+00:00
-- elapsed: 42ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f422
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:06.256332+00:00
-- finished_at: 2026-11-09T03:52:06.304747+00:00
-- elapsed: 48ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f426
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:06.307045+00:00
-- finished_at: 2026-11-09T03:52:06.503004+00:00
-- elapsed: 195ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_actor_course_affinity_course__COURSE_KEY__ref_int_course_catalog_.d6cf4f8052
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e536
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
-- created_at: 2026-11-09T03:52:06.307269+00:00
-- finished_at: 2026-11-09T03:52:06.849931+00:00
-- elapsed: 542ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e53a
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
-- created_at: 2026-11-09T03:52:06.853092+00:00
-- finished_at: 2026-11-09T03:52:06.933741+00:00
-- elapsed: 80ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e53e
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:06.940595+00:00
-- finished_at: 2026-11-09T03:52:07.186350+00:00
-- elapsed: 245ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_co_actor_count.12188e68ce
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f432
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
-- created_at: 2026-11-09T03:52:06.942584+00:00
-- finished_at: 2026-11-09T03:52:07.187387+00:00
-- elapsed: 244ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_unique_combination_of_columns_int_course_coocurrence_course_key__other_course_key.81d740470b
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e54a
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
-- created_at: 2026-11-09T03:52:06.942053+00:00
-- finished_at: 2026-11-09T03:52:07.187414+00:00
-- elapsed: 245ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_course_key.2eec6f118c
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e542
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
-- created_at: 2026-11-09T03:52:06.942466+00:00
-- finished_at: 2026-11-09T03:52:07.187402+00:00
-- elapsed: 244ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_expression_is_true_int_course_coocurrence_course_key_other_course_key.21c6673769
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e546
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
-- created_at: 2026-11-09T03:52:06.942275+00:00
-- finished_at: 2026-11-09T03:52:07.203618+00:00
-- elapsed: 261ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_other_course_key.992158ab8e
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f42e
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
-- created_at: 2026-11-09T03:52:06.942401+00:00
-- finished_at: 2026-11-09T03:52:07.263299+00:00
-- elapsed: 320ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_coocurrence_course_key__course_key__ref_int_course_catalog_.2012314292
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f42a
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
-- created_at: 2026-11-09T03:52:07.426298+00:00
-- finished_at: 2026-11-09T03:52:07.539838+00:00
-- elapsed: 113ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_coocurrence_other_course_key__course_key__ref_int_course_catalog_.a490c6181d
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f436
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
-- created_at: 2026-11-09T03:52:07.542854+00:00
-- finished_at: 2026-11-09T03:52:07.663888+00:00
-- elapsed: 121ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e54e
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:07.666027+00:00
-- finished_at: 2026-11-09T03:52:07.848099+00:00
-- elapsed: 182ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e552
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:07.849619+00:00
-- finished_at: 2026-11-09T03:52:08.014145+00:00
-- elapsed: 164ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f43a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."MARTS" LIMIT 10000;
-- created_at: 2026-11-09T03:52:08.017131+00:00
-- finished_at: 2026-11-09T03:52:08.852410+00:00
-- elapsed: 835ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e556
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
    '2026-11-09 03:52:02.723628+00:00'::timestamp_tz as generated_at
from ranked as r 
left join ABACUS_DEV.INTERMEDIATE.int_course_catalog as cat 
    on r.course_key = cat.course_key
where r.recommendation_rank <= 5
    
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:08.854439+00:00
-- finished_at: 2026-11-09T03:52:09.026624+00:00
-- elapsed: 172ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f43e
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.033479+00:00
-- finished_at: 2026-11-09T03:52:09.264+00:00
-- elapsed: 230ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f442
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.033245+00:00
-- finished_at: 2026-11-09T03:52:09.296629+00:00
-- elapsed: 263ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f446
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.265168+00:00
-- finished_at: 2026-11-09T03:52:09.338952+00:00
-- elapsed: 73ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f44a
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.297979+00:00
-- finished_at: 2026-11-09T03:52:09.344247+00:00
-- elapsed: 46ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e55a
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.345699+00:00
-- finished_at: 2026-11-09T03:52:09.506096+00:00
-- elapsed: 160ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e562
-- desc: execute adapter call
create or replace  temporary view ABACUS_DEV.MARTS.course_recommendations_history__dbt_tmp
  
  
  
  
  as (
    


select * from ABACUS_DEV.MARTS.course_recommendations
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.340987+00:00
-- finished_at: 2026-11-09T03:52:09.507887+00:00
-- elapsed: 166ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e55e
-- desc: execute adapter call
create or replace  temporary view ABACUS_DEV.MARTS.reco_run_metrics__dbt_tmp
  
  
  
  
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
    '2026-11-09 03:52:02.723628+00:00'::timestamp_tz                         as run_at,
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
-- created_at: 2026-11-09T03:52:09.508124+00:00
-- finished_at: 2026-11-09T03:52:09.571008+00:00
-- elapsed: 62ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f44e
-- desc: execute adapter call
describe table ABACUS_DEV.MARTS.course_recommendations_history__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.509090+00:00
-- finished_at: 2026-11-09T03:52:09.573998+00:00
-- elapsed: 64ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e566
-- desc: execute adapter call
describe table ABACUS_DEV.MARTS.reco_run_metrics__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.573325+00:00
-- finished_at: 2026-11-09T03:52:09.615696+00:00
-- elapsed: 42ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f452
-- desc: execute adapter call
describe table ABACUS_DEV.MARTS.course_recommendations_history
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.575166+00:00
-- finished_at: 2026-11-09T03:52:09.621211+00:00
-- elapsed: 46ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f456
-- desc: execute adapter call
describe table ABACUS_DEV.MARTS.reco_run_metrics
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.622873+00:00
-- finished_at: 2026-11-09T03:52:09.774194+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f45a
-- desc: execute adapter call
describe table ABACUS_DEV.MARTS.reco_run_metrics__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.618601+00:00
-- finished_at: 2026-11-09T03:52:09.775212+00:00
-- elapsed: 156ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e56a
-- desc: execute adapter call
describe table ABACUS_DEV.MARTS.course_recommendations_history__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.776641+00:00
-- finished_at: 2026-11-09T03:52:09.905654+00:00
-- elapsed: 129ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e56e
-- desc: execute adapter call
describe table "ABACUS_DEV"."MARTS"."COURSE_RECOMMENDATIONS_HISTORY"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.776495+00:00
-- finished_at: 2026-11-09T03:52:09.907325+00:00
-- elapsed: 130ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e572
-- desc: execute adapter call
describe table "ABACUS_DEV"."MARTS"."RECO_RUN_METRICS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.911007+00:00
-- finished_at: 2026-11-09T03:52:10.051075+00:00
-- elapsed: 140ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e57a
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:09.909991+00:00
-- finished_at: 2026-11-09T03:52:10.052338+00:00
-- elapsed: 142ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e576
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:10.052432+00:00
-- finished_at: 2026-11-09T03:52:10.454625+00:00
-- elapsed: 402ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f45e
-- desc: execute adapter call

    insert into ABACUS_DEV.MARTS.course_recommendations_history ("ACTOR_ID", "RECOMMENDATION_RANK", "COURSE_KEY", "COURSE_NAME_EN", "COURSE_NAME_TH", "PROGRAM", "SCORE", "REASON", "GENERATED_AT")
    (
        select "ACTOR_ID", "RECOMMENDATION_RANK", "COURSE_KEY", "COURSE_NAME_EN", "COURSE_NAME_TH", "PROGRAM", "SCORE", "REASON", "GENERATED_AT"
        from ABACUS_DEV.MARTS.course_recommendations_history__dbt_tmp
    )


/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:10.051373+00:00
-- finished_at: 2026-11-09T03:52:10.459507+00:00
-- elapsed: 408ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e57e
-- desc: execute adapter call

    insert into ABACUS_DEV.MARTS.reco_run_metrics ("RUN_AT", "ACTORS", "REC_ROWS", "AVG_RECS_PER_ACTOR", "PCT_PERSONAL", "COURSES_RECOMMENDED", "CATALOG_SIZE", "CATALOG_COVERAGE", "INTERACTIONS_TOTAL", "NEWEST_CLICK_AT", "DATA_LAG_MINUTES")
    (
        select "RUN_AT", "ACTORS", "REC_ROWS", "AVG_RECS_PER_ACTOR", "PCT_PERSONAL", "COURSES_RECOMMENDED", "CATALOG_SIZE", "CATALOG_COVERAGE", "INTERACTIONS_TOTAL", "NEWEST_CLICK_AT", "DATA_LAG_MINUTES"
        from ABACUS_DEV.MARTS.reco_run_metrics__dbt_tmp
    )


/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:10.459581+00:00
-- finished_at: 2026-11-09T03:52:10.716011+00:00
-- elapsed: 256ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f466
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:10.454798+00:00
-- finished_at: 2026-11-09T03:52:10.717191+00:00
-- elapsed: 262ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f462
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:10.719843+00:00
-- finished_at: 2026-11-09T03:52:10.891917+00:00
-- elapsed: 172ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f46a
-- desc: execute adapter call
drop view if exists ABACUS_DEV.MARTS.reco_run_metrics__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:10.719843+00:00
-- finished_at: 2026-11-09T03:52:10.893140+00:00
-- elapsed: 173ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e582
-- desc: execute adapter call
drop view if exists ABACUS_DEV.MARTS.course_recommendations_history__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:10.894423+00:00
-- finished_at: 2026-11-09T03:52:11.073032+00:00
-- elapsed: 178ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e586
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:10.894088+00:00
-- finished_at: 2026-11-09T03:52:11.074549+00:00
-- elapsed: 180ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e58a
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:11.082523+00:00
-- finished_at: 2026-11-09T03:52:11.245907+00:00
-- elapsed: 163ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_run_metrics_run_at.9ee7cf559a
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e596
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
-- created_at: 2026-11-09T03:52:11.082620+00:00
-- finished_at: 2026-11-09T03:52:11.247056+00:00
-- elapsed: 164ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_recommendations_history_generated_at.7494d185fc
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e592
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
-- created_at: 2026-11-09T03:52:11.082870+00:00
-- finished_at: 2026-11-09T03:52:11.247073+00:00
-- elapsed: 164ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_run_metrics_actors.a432589070
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f46e
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
-- created_at: 2026-11-09T03:52:11.082785+00:00
-- finished_at: 2026-11-09T03:52:11.248204+00:00
-- elapsed: 165ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_reco_run_metrics_run_at.231c895403
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e58e
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
-- created_at: 2026-11-09T03:52:11.253570+00:00
-- finished_at: 2026-11-09T03:52:11.421685+00:00
-- elapsed: 168ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e59a
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:11.423160+00:00
-- finished_at: 2026-11-09T03:52:11.593280+00:00
-- elapsed: 170ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f472
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:11.597124+00:00
-- finished_at: 2026-11-09T03:52:12.263896+00:00
-- elapsed: 666ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f476
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
-- created_at: 2026-11-09T03:52:12.266113+00:00
-- finished_at: 2026-11-09T03:52:12.320257+00:00
-- elapsed: 54ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e59e
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-11-09T03:52:12.328358+00:00
-- finished_at: 2026-11-09T03:52:12.443596+00:00
-- elapsed: 115ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_reco_hit_rate_daily_reco_date.c7b671dbc1
-- query_id: 01c849a8-000e-2ad2-0002-ff9e0009f47a
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
-- created_at: 2026-11-09T03:52:12.328475+00:00
-- finished_at: 2026-11-09T03:52:12.452800+00:00
-- elapsed: 124ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_hit_rate_daily_reco_date.177c9445d3
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e5a2
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
-- created_at: 2026-11-09T03:52:12.328371+00:00
-- finished_at: 2026-11-09T03:52:12.455719+00:00
-- elapsed: 127ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_accepted_range_reco_hit_rate_daily_hit_rate__1__0.aa7d8e5ab2
-- query_id: 01c849a8-000e-2ad4-0002-ff9e0009e5a6
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
