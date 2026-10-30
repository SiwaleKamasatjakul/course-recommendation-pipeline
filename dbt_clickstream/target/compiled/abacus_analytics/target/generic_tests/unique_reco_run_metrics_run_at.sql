
    
    

select
    run_at as unique_field,
    count(*) as n_records

from ABACUS_DEV.MARTS.reco_run_metrics
where run_at is not null
group by run_at
having count(*) > 1


