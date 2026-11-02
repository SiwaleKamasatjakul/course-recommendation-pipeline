
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select affinity_score
from ABACUS_DEV.PR_TEST_INTERMEDIATE.int_actor_course_affinity
where affinity_score is null



  
  
      
    ) dbt_internal_test