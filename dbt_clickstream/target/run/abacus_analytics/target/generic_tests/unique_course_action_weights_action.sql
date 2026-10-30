
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    action as unique_field,
    count(*) as n_records

from ABACUS_DEV.SEEDS.course_action_weights
where action is not null
group by action
having count(*) > 1



  
  
      
    ) dbt_internal_test