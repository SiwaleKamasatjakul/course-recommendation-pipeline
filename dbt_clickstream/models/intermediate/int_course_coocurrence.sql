with actor_courses as (

    select actor_id, 
            course as course_key
    from {{ ref('int_actor_course_affinity')}}

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
HAVING count(DISTINCT actor_id) >= {{ var('min_co_actors') }}