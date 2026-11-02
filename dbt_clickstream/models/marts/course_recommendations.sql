

with affinity as (

    select 
        actor_id, 
        course as course_key, 
        affinity_score
    from {{ ref('int_actor_course_affinity')}}

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
    join {{ ref('int_course_coocurrence')}} as c 
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
    cross join {{ ref('int_course_popularity')}} as p
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
    '{{ run_started_at }}'::timestamp_tz as generated_at
from ranked as r 
left join {{ ref('int_course_catalog') }} as cat 
    on r.course_key = cat.course_key
where r.recommendation_rank <= {{ var('recommendations_per_actor')}}
    