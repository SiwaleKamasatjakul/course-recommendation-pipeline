
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select course_key
from ABACUS_DEV.INTERMEDIATE.int_course_interactions
where course_key is null



  
  
      
    ) dbt_internal_test