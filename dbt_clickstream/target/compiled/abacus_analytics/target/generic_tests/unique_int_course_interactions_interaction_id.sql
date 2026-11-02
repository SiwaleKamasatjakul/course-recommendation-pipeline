
    
    

select
    interaction_id as unique_field,
    count(*) as n_records

from ABACUS_DEV.PR_TEST_INTERMEDIATE.int_course_interactions
where interaction_id is not null
group by interaction_id
having count(*) > 1


