-- created_at: 2026-10-30T07:58:29.895095+00:00
-- finished_at: 2026-10-30T07:58:29.983555+00:00
-- elapsed: 88ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482dee
-- desc: execute adapter call
show terse schemas in database ABACUS_DEV
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:29.996921+00:00
-- finished_at: 2026-10-30T07:58:30.061789+00:00
-- elapsed: 64ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482df2
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.064190+00:00
-- finished_at: 2026-10-30T07:58:30.153692+00:00
-- elapsed: 89ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7aa
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.155408+00:00
-- finished_at: 2026-10-30T07:58:30.265976+00:00
-- elapsed: 110ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7ae
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."STAGING" LIMIT 10000;
-- created_at: 2026-10-30T07:58:30.251328+00:00
-- finished_at: 2026-10-30T07:58:30.327995+00:00
-- elapsed: 76ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7b2
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.256983+00:00
-- finished_at: 2026-10-30T07:58:30.331889+00:00
-- elapsed: 74ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7b6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.329944+00:00
-- finished_at: 2026-10-30T07:58:30.408235+00:00
-- elapsed: 78ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482dfa
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.332970+00:00
-- finished_at: 2026-10-30T07:58:30.408839+00:00
-- elapsed: 75ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7ba
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.335323+00:00
-- finished_at: 2026-10-30T07:58:30.437587+00:00
-- elapsed: 102ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7be
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."SEEDS" LIMIT 10000;
-- created_at: 2026-10-30T07:58:30.269968+00:00
-- finished_at: 2026-10-30T07:58:30.512150+00:00
-- elapsed: 242ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482df6
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_course_card_clicked
  
  
  
  
  as (
    -- models/staging/stg_course_card_clicked.sql
-- Materialization comes from the folder default in dbt_project.yml (view)


WITH source AS (
    SELECT *
    FROM ABACUS_ANALYTICS.RAW.clickstream_events
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
        '2026-10-30 07:58:29.372184+00:00'::timestamp_tz    AS dbt_built_at

    FROM source

)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.439017+00:00
-- finished_at: 2026-10-30T07:58:30.528250+00:00
-- elapsed: 89ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e02
-- desc: add_query adapter call
BEGIN;
-- created_at: 2026-10-30T07:58:30.514617+00:00
-- finished_at: 2026-10-30T07:58:30.588121+00:00
-- elapsed: 73ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_course_card_clicked
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e06
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_course_card_clicked", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.410066+00:00
-- finished_at: 2026-10-30T07:58:30.635158+00:00
-- elapsed: 225ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482dfe
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_page_dwell
  
  
  
  
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
    METADATA:user_agent::STRING       AS user_agent,
    '2026-10-30 07:58:29.372184+00:00'::timestamp_tz    AS dbt_built_at

    FROM source
)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.410438+00:00
-- finished_at: 2026-10-30T07:58:30.642866+00:00
-- elapsed: 232ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7c2
-- desc: execute adapter call
create or replace   view ABACUS_DEV.STAGING.stg_competition_viewed
  
  
  
  
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
    METADATA:user_agent::STRING             AS user_agent,
    '2026-10-30 07:58:29.372184+00:00'::timestamp_tz    AS dbt_built_at

FROM source
)

SELECT * FROM flattened
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.636412+00:00
-- finished_at: 2026-10-30T07:58:30.722169+00:00
-- elapsed: 85ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_page_dwell
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7ce
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_page_dwell", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.644094+00:00
-- finished_at: 2026-10-30T07:58:30.723012+00:00
-- elapsed: 78ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.stg_competition_viewed
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7ca
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.stg_competition_viewed", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:30.729450+00:00
-- finished_at: 2026-10-30T07:58:31.136342+00:00
-- elapsed: 406ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_event_ts_utc.9b1def047c
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e0a
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
-- created_at: 2026-10-30T07:58:30.729487+00:00
-- finished_at: 2026-10-30T07:58:31.136352+00:00
-- elapsed: 406ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_session_id.25044d0714
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e0e
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
-- created_at: 2026-10-30T07:58:30.729389+00:00
-- finished_at: 2026-10-30T07:58:31.137329+00:00
-- elapsed: 407ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_stg_competition_viewed_competition_id.aa85bbb0b9
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7d2
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
-- created_at: 2026-10-30T07:58:30.529025+00:00
-- finished_at: 2026-10-30T07:58:31.247897+00:00
-- elapsed: 718ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7c6
-- desc: add_query adapter call
insert overwrite into ABACUS_DEV.SEEDS.course_action_weights (ACTION, WEIGHT, DESCRIPTION) values
            ('expand_details',1.0,'Opened the course details card'),('view_course_from_path',2.0,'Went from the learning path to the course page'),('   search_click',1.5,'Clicked a course from search results');
-- created_at: 2026-10-30T07:58:31.251448+00:00
-- finished_at: 2026-10-30T07:58:31.499400+00:00
-- elapsed: 247ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.abacus_analytics.course_action_weights
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e12
-- desc: add_query adapter call
COMMIT;
-- created_at: 2026-10-30T07:58:31.507267+00:00
-- finished_at: 2026-10-30T07:58:31.674425+00:00
-- elapsed: 167ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_action_weights_weight.c6d2a82126
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e1a
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
-- created_at: 2026-10-30T07:58:31.507307+00:00
-- finished_at: 2026-10-30T07:58:31.675831+00:00
-- elapsed: 168ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_action_weights_action.1375e990e8
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e1e
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
-- created_at: 2026-10-30T07:58:31.507208+00:00
-- finished_at: 2026-10-30T07:58:31.691297+00:00
-- elapsed: 184ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_course_action_weights_action.4b4d8b2df1
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e16
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
-- created_at: 2026-10-30T07:58:31.693545+00:00
-- finished_at: 2026-10-30T07:58:31.770214+00:00
-- elapsed: 76ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7d6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:31.771720+00:00
-- finished_at: 2026-10-30T07:58:31.857933+00:00
-- elapsed: 86ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7da
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:31.858878+00:00
-- finished_at: 2026-10-30T07:58:31.941935+00:00
-- elapsed: 83ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e22
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."INTERMEDIATE" LIMIT 10000;
-- created_at: 2026-10-30T07:58:31.946850+00:00
-- finished_at: 2026-10-30T07:58:33.006533+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7de
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
-- created_at: 2026-10-30T07:58:33.007813+00:00
-- finished_at: 2026-10-30T07:58:33.082215+00:00
-- elapsed: 74ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_interactions
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e26
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_interactions", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:33.103588+00:00
-- finished_at: 2026-10-30T07:58:33.282487+00:00
-- elapsed: 178ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_actor_id.8d54c7258e
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7e6
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
-- created_at: 2026-10-30T07:58:33.109585+00:00
-- finished_at: 2026-10-30T07:58:33.283251+00:00
-- elapsed: 173ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_course_key.7354ea13c7
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7ea
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
-- created_at: 2026-10-30T07:58:33.109909+00:00
-- finished_at: 2026-10-30T07:58:33.294793+00:00
-- elapsed: 184ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_action_weight.e82ac37955
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e2a
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
-- created_at: 2026-10-30T07:58:33.102358+00:00
-- finished_at: 2026-10-30T07:58:33.370442+00:00
-- elapsed: 268ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_interactions_action__action__ref_course_action_weights_.969abd2555
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7e2
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
-- created_at: 2026-10-30T07:58:33.375228+00:00
-- finished_at: 2026-10-30T07:58:33.473211+00:00
-- elapsed: 97ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_interactions_interaction_id.8b507b5973
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7ee
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
-- created_at: 2026-10-30T07:58:33.377018+00:00
-- finished_at: 2026-10-30T07:58:33.500330+00:00
-- elapsed: 123ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_int_course_interactions_interaction_id.c39047826c
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e2e
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
-- created_at: 2026-10-30T07:58:33.504375+00:00
-- finished_at: 2026-10-30T07:58:33.573030+00:00
-- elapsed: 68ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e36
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:33.504315+00:00
-- finished_at: 2026-10-30T07:58:33.573931+00:00
-- elapsed: 69ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e32
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:33.504488+00:00
-- finished_at: 2026-10-30T07:58:33.588371+00:00
-- elapsed: 83ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7f2
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:33.575004+00:00
-- finished_at: 2026-10-30T07:58:33.642407+00:00
-- elapsed: 67ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e3a
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:33.575323+00:00
-- finished_at: 2026-10-30T07:58:33.651699+00:00
-- elapsed: 76ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7f6
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:33.589352+00:00
-- finished_at: 2026-10-30T07:58:33.656704+00:00
-- elapsed: 67ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e3e
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:33.659687+00:00
-- finished_at: 2026-10-30T07:58:34.299881+00:00
-- elapsed: 640ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e42
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
-- created_at: 2026-10-30T07:58:33.644544+00:00
-- finished_at: 2026-10-30T07:58:34.301221+00:00
-- elapsed: 656ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7fa
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
-- created_at: 2026-10-30T07:58:33.654878+00:00
-- finished_at: 2026-10-30T07:58:34.301234+00:00
-- elapsed: 646ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f7fe
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
-- created_at: 2026-10-30T07:58:34.303722+00:00
-- finished_at: 2026-10-30T07:58:34.383370+00:00
-- elapsed: 79ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_actor_course_affinity
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f802
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_actor_course_affinity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:34.303844+00:00
-- finished_at: 2026-10-30T07:58:34.384811+00:00
-- elapsed: 80ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_popularity
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e46
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_popularity", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:34.302604+00:00
-- finished_at: 2026-10-30T07:58:34.384833+00:00
-- elapsed: 82ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_catalog
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f806
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_catalog", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:34.393181+00:00
-- finished_at: 2026-10-30T07:58:34.549521+00:00
-- elapsed: 156ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_course.e2ac6559e0
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e4a
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
-- created_at: 2026-10-30T07:58:34.393166+00:00
-- finished_at: 2026-10-30T07:58:34.560914+00:00
-- elapsed: 167ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_actor_id.5e3a9e26ef
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f816
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
-- created_at: 2026-10-30T07:58:34.393173+00:00
-- finished_at: 2026-10-30T07:58:34.563615+00:00
-- elapsed: 170ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_actor_course_affinity_affinity_score.4754ad9c06
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f80e
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
-- created_at: 2026-10-30T07:58:34.398295+00:00
-- finished_at: 2026-10-30T07:58:34.584470+00:00
-- elapsed: 186ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_unique_combination_of_columns_int_actor_course_affinity_actor_id__course.ab32ed82c2
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f80a
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
-- created_at: 2026-10-30T07:58:34.398295+00:00
-- finished_at: 2026-10-30T07:58:34.692104+00:00
-- elapsed: 293ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_actor_course_affinity_course__COURSE_KEY__ref_int_course_catalog_.d6cf4f8052
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f812
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
-- created_at: 2026-10-30T07:58:34.587533+00:00
-- finished_at: 2026-10-30T07:58:34.731058+00:00
-- elapsed: 143ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e4e
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:34.732577+00:00
-- finished_at: 2026-10-30T07:58:34.807975+00:00
-- elapsed: 75ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f81a
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:34.812091+00:00
-- finished_at: 2026-10-30T07:58:35.523334+00:00
-- elapsed: 711ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e52
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
-- created_at: 2026-10-30T07:58:35.524978+00:00
-- finished_at: 2026-10-30T07:58:35.594553+00:00
-- elapsed: 69ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.int_course_coocurrence
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e56
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.int_course_coocurrence", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:35.610206+00:00
-- finished_at: 2026-10-30T07:58:35.785788+00:00
-- elapsed: 175ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_other_course_key.992158ab8e
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f826
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
-- created_at: 2026-10-30T07:58:35.610423+00:00
-- finished_at: 2026-10-30T07:58:35.787193+00:00
-- elapsed: 176ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_course_key.2eec6f118c
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f81e
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
-- created_at: 2026-10-30T07:58:35.610784+00:00
-- finished_at: 2026-10-30T07:58:35.787274+00:00
-- elapsed: 176ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_int_course_coocurrence_co_actor_count.12188e68ce
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e5e
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
-- created_at: 2026-10-30T07:58:35.609675+00:00
-- finished_at: 2026-10-30T07:58:35.788423+00:00
-- elapsed: 178ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_expression_is_true_int_course_coocurrence_course_key_other_course_key.21c6673769
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e5a
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
-- created_at: 2026-10-30T07:58:35.610774+00:00
-- finished_at: 2026-10-30T07:58:35.856386+00:00
-- elapsed: 245ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_coocurrence_other_course_key__course_key__ref_int_course_catalog_.a490c6181d
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f82a
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
-- created_at: 2026-10-30T07:58:35.610221+00:00
-- finished_at: 2026-10-30T07:58:35.871775+00:00
-- elapsed: 261ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.relationships_int_course_coocurrence_course_key__course_key__ref_int_course_catalog_.2012314292
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f822
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
-- created_at: 2026-10-30T07:58:35.876500+00:00
-- finished_at: 2026-10-30T07:58:35.990158+00:00
-- elapsed: 113ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_unique_combination_of_columns_int_course_coocurrence_course_key__other_course_key.81d740470b
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e62
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
-- created_at: 2026-10-30T07:58:35.993528+00:00
-- finished_at: 2026-10-30T07:58:36.068877+00:00
-- elapsed: 75ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f82e
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:36.070586+00:00
-- finished_at: 2026-10-30T07:58:36.142385+00:00
-- elapsed: 71ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e66
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:36.142983+00:00
-- finished_at: 2026-10-30T07:58:36.241267+00:00
-- elapsed: 98ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e6a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "ABACUS_DEV"."MARTS" LIMIT 10000;
-- created_at: 2026-10-30T07:58:36.247889+00:00
-- finished_at: 2026-10-30T07:58:37.252172+00:00
-- elapsed: 1.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e6e
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
    '2026-10-30 07:58:29.372184+00:00'::timestamp_tz as generated_at
from ranked as r 
left join ABACUS_DEV.INTERMEDIATE.int_course_catalog as cat 
    on r.course_key = cat.course_key
where r.recommendation_rank <= 5
    
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:37.254568+00:00
-- finished_at: 2026-10-30T07:58:37.354203+00:00
-- elapsed: 99ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f832
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:37.359465+00:00
-- finished_at: 2026-10-30T07:58:37.428919+00:00
-- elapsed: 69ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e72
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:37.359465+00:00
-- finished_at: 2026-10-30T07:58:37.431110+00:00
-- elapsed: 71ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f836
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:37.432676+00:00
-- finished_at: 2026-10-30T07:58:37.506292+00:00
-- elapsed: 73ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f83a
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:37.430994+00:00
-- finished_at: 2026-10-30T07:58:37.508891+00:00
-- elapsed: 77ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f83e
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:37.511588+00:00
-- finished_at: 2026-10-30T07:58:38.232864+00:00
-- elapsed: 721ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f842
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
    '2026-10-30 07:58:29.372184+00:00'::timestamp_tz                         as run_at,
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
-- created_at: 2026-10-30T07:58:38.233986+00:00
-- finished_at: 2026-10-30T07:58:38.313197+00:00
-- elapsed: 79ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e7a
-- desc: execute adapter call
drop view if exists ABACUS_DEV.MARTS.reco_run_metrics__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:38.314416+00:00
-- finished_at: 2026-10-30T07:58:38.387912+00:00
-- elapsed: 73ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_run_metrics
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f846
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_run_metrics", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:37.512971+00:00
-- finished_at: 2026-10-30T07:58:38.394389+00:00
-- elapsed: 881ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e76
-- desc: execute adapter call
create or replace transient  table ABACUS_DEV.MARTS.course_recommendations_history
    
    
    
    
    as (


select * from ABACUS_DEV.MARTS.course_recommendations
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:38.395515+00:00
-- finished_at: 2026-10-30T07:58:38.462772+00:00
-- elapsed: 67ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e7e
-- desc: execute adapter call
drop view if exists ABACUS_DEV.MARTS.course_recommendations_history__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:38.464274+00:00
-- finished_at: 2026-10-30T07:58:38.548856+00:00
-- elapsed: 84ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.course_recommendations_history
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f852
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.course_recommendations_history", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:38.394699+00:00
-- finished_at: 2026-10-30T07:58:38.554207+00:00
-- elapsed: 159ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_run_metrics_run_at.9ee7cf559a
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f84e
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
-- created_at: 2026-10-30T07:58:38.394693+00:00
-- finished_at: 2026-10-30T07:58:38.556075+00:00
-- elapsed: 161ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_reco_run_metrics_run_at.231c895403
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f84a
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
-- created_at: 2026-10-30T07:58:38.394481+00:00
-- finished_at: 2026-10-30T07:58:38.572489+00:00
-- elapsed: 178ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_run_metrics_actors.a432589070
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e82
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
-- created_at: 2026-10-30T07:58:38.554664+00:00
-- finished_at: 2026-10-30T07:58:38.716758+00:00
-- elapsed: 162ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_course_recommendations_history_generated_at.7494d185fc
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e86
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
-- created_at: 2026-10-30T07:58:38.721007+00:00
-- finished_at: 2026-10-30T07:58:38.794538+00:00
-- elapsed: 73ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e8a
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:38.795903+00:00
-- finished_at: 2026-10-30T07:58:38.868646+00:00
-- elapsed: 72ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e8e
-- desc: execute adapter call
alter session set query_tag = 'dbt_abacus_dev_local'
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:38.871373+00:00
-- finished_at: 2026-10-30T07:58:39.392351+00:00
-- elapsed: 520ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f856
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
-- created_at: 2026-10-30T07:58:39.394484+00:00
-- finished_at: 2026-10-30T07:58:39.484299+00:00
-- elapsed: 89ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.abacus_analytics.reco_hit_rate_daily
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e92
-- desc: execute adapter call
alter session unset query_tag
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.abacus_analytics.reco_hit_rate_daily", "profile_name": "abacus", "target_name": "dev"} */;
-- created_at: 2026-10-30T07:58:39.494558+00:00
-- finished_at: 2026-10-30T07:58:39.625937+00:00
-- elapsed: 131ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.not_null_reco_hit_rate_daily_reco_date.177c9445d3
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f85a
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
-- created_at: 2026-10-30T07:58:39.494605+00:00
-- finished_at: 2026-10-30T07:58:39.626497+00:00
-- elapsed: 131ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.unique_reco_hit_rate_daily_reco_date.c7b671dbc1
-- query_id: 01c8125e-3203-c3dd-0018-1dbe0047f85e
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
-- created_at: 2026-10-30T07:58:39.494233+00:00
-- finished_at: 2026-10-30T07:58:39.660311+00:00
-- elapsed: 166ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.abacus_analytics.dbt_utils_accepted_range_reco_hit_rate_daily_hit_rate__1__0.aa7d8e5ab2
-- query_id: 01c8125e-3203-c3dc-0018-1dbe00482e96
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
