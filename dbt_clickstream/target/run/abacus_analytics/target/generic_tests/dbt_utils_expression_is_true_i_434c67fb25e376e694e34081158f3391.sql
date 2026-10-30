
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence

where not(course_key <> other_course_key)


  
  
      
    ) dbt_internal_test