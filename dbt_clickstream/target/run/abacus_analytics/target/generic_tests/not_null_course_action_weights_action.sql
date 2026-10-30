
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select action
from ABACUS_DEV.SEEDS.course_action_weights
where action is null



  
  
      
    ) dbt_internal_test