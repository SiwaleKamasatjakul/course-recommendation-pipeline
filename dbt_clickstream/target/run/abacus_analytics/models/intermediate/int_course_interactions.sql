
  
    



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
;



  