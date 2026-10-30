





with validation_errors as (

    select
        course_key, other_course_key
    from ABACUS_DEV.INTERMEDIATE.int_course_coocurrence
    group by course_key, other_course_key
    having count(*) > 1

)

select *
from validation_errors


