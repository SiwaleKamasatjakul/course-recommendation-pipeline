
  
    



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
;



  