
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select action_weight
from ABACUS_DEV.INTERMEDIATE.int_course_interactions
where action_weight is null



  
  
      
    ) dbt_internal_test