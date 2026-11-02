





with validation_errors as (

    select
        actor_id, course
    from ABACUS_DEV.PR_TEST_INTERMEDIATE.int_actor_course_affinity
    group by actor_id, course
    having count(*) > 1

)

select *
from validation_errors


