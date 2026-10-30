
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  





with validation_errors as (

    select
        actor_id, recommendation_rank
    from ABACUS_ANALYTICS.MARTS.course_recommendations
    group by actor_id, recommendation_rank
    having count(*) > 1

)

select *
from validation_errors



  
  
      
    ) dbt_internal_test