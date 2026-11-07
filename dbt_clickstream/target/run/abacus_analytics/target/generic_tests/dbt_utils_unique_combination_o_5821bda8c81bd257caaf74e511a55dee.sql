
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  





with validation_errors as (

    select
        actor_id, course
    from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
    group by actor_id, course
    having count(*) > 1

)

select *
from validation_errors



  
  
      
    ) dbt_internal_test