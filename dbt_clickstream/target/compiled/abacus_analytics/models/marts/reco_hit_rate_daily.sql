-- "Of the parents we recommended to on day D,
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
