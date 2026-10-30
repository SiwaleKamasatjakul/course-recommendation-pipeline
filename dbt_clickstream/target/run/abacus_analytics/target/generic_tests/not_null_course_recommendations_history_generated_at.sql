
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select generated_at
from ABACUS_DEV.MARTS.course_recommendations_history
where generated_at is null



  
  
      
    ) dbt_internal_test