
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select actor_id
from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
where actor_id is null



  
  
      
    ) dbt_internal_test