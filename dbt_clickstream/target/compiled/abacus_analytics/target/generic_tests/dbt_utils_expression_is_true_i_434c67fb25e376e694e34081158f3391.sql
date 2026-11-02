



select
    1
from ABACUS_DEV.PR_TEST_INTERMEDIATE.int_course_coocurrence

where not(course_key <> other_course_key)

