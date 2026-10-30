





with validation_errors as (

    select
        actor_id, recommendation_rank
    from ABACUS_ANALYTICS.MARTS.course_recommendations
    group by actor_id, recommendation_rank
    having count(*) > 1

)

select *
from validation_errors


