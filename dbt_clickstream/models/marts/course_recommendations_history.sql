{{ 
    
    config(

    materialized = 'incremental',
    incremental_strategy = 'append',
    full_refresh = false,
    on_schema_change = 'append_new_columns'

)}}


select * from {{  ref('course_recommendations') }}