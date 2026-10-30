

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