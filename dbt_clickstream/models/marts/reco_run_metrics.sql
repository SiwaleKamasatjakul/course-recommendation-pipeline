{{
config(
    materialized = 'incremental',
    incremental_strategy = 'append',
    full_refresh = false,
    on_schema_change = 'append_new_columns'
    
)
}}

with recs as (

    select actor_id, course_key, reason
    from {{ ref('course_recommendations')}}

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
    from {{ ref('int_course_catalog')}}

),

clicks as (

    select 
        count(*)                as interactions_total,
        max(event_ts_utc)       as newest_click_at
    from {{ ref('int_course_interactions')}}


)

select
    '{{ run_started_at }}'::timestamp_tz                         as run_at,
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