
    
    

with child as (
    select course_key as from_field
    from ABACUS_ANALYTICS.MARTS.course_recommendations
    where course_key is not null
),

parent as (
    select course_key as to_field
    from ABACUS_ANALYTICS.INTERMEDIATE.int_course_catalog
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


