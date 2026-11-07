
    
    

select
    reco_date as unique_field,
    count(*) as n_records

from ABACUS_DEV.MARTS.reco_hit_rate_daily
where reco_date is not null
group by reco_date
having count(*) > 1


