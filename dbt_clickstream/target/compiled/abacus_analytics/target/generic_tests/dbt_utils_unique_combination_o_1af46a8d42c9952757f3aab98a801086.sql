





with validation_errors as (

    select
        actor_id, course_key
    from ABACUS_ANALYTICS.MARTS.course_recommendations
    group by actor_id, course_key
    having count(*) > 1

)

select *
from validation_errors


