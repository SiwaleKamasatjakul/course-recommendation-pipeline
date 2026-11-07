
    
    

select
    action as unique_field,
    count(*) as n_records

from ABACUS_DEV.SEEDS.course_action_weights
where action is not null
group by action
having count(*) > 1


