
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select co_actor_count
from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
where co_actor_count is null



  
  
      
    ) dbt_internal_test