
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select recommendation_rank
from ABACUS_ANALYTICS.MARTS.course_recommendations
where recommendation_rank is null



  
  
      
    ) dbt_internal_test