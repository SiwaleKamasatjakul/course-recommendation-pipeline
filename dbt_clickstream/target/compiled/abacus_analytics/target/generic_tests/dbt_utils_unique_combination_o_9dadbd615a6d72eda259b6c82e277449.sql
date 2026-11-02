





with validation_errors as (

    select
        actor_id, course_key
    from ABACUS_ANALYTICS.INTERMEDIATE.int_actor_course_affinity
    group by actor_id, course_key
    having count(*) > 1

)

select *
from validation_errors


