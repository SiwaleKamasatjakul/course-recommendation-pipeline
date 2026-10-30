
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select competition_id
from ABACUS_DEV.STAGING.stg_competition_viewed
where competition_id is null



  
  
      
    ) dbt_internal_test