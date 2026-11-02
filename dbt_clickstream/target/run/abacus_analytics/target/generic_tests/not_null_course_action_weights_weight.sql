
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select weight
from ABACUS_DEV.PR_TEST_SEEDS.course_action_weights
where weight is null



  
  
      
    ) dbt_internal_test