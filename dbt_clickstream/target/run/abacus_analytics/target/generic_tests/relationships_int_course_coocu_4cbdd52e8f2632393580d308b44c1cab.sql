
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select other_course_key as from_field
    from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
    where other_course_key is not null
),

parent as (
    select course_key as to_field
    from ABACUS_DEV.INTERMEDIATE.int_course_catalog
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test