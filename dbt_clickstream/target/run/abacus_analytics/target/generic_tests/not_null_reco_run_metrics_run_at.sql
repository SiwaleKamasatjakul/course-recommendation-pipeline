
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select run_at
from ABACUS_DEV.MARTS.reco_run_metrics
where run_at is null



  
  
      
    ) dbt_internal_test