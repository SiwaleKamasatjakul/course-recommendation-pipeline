
    
    

with child as (
    select course as from_field
    from ABACUS_DEV.INTERMEDIATE.int_actor_course_affinity
    where course is not null
),

parent as (
    select COURSE_KEY as to_field
    from ABACUS_DEV.INTERMEDIATE.int_course_catalog
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


