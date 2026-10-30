
    
    

with child as (
    select action as from_field
    from ABACUS_DEV.INTERMEDIATE.int_course_interactions
    where action is not null
),

parent as (
    select action as to_field
    from ABACUS_DEV.SEEDS.course_action_weights
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


