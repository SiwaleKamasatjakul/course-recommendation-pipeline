
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select actors
from ABACUS_DEV.MARTS.reco_run_metrics
where actors is null



  
  
      
    ) dbt_internal_test