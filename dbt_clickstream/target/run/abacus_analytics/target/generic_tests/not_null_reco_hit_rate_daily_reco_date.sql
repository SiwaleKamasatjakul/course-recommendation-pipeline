
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select reco_date
from ABACUS_DEV.MARTS.reco_hit_rate_daily
where reco_date is null



  
  
      
    ) dbt_internal_test