
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select event_ts_utc
from ABACUS_DEV.STAGING.stg_competition_viewed
where event_ts_utc is null



  
  
      
    ) dbt_internal_test