
    
    

with all_values as (

    select
        reason as value_field,
        count(*) as n_records

    from ABACUS_ANALYTICS.MARTS.course_recommendations
    group by reason

)

select *
from all_values
where value_field not in (
    'similar_parents','popular'
)


