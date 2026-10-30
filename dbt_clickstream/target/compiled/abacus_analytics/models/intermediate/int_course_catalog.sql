

with course_catalog as (
    
    select 
    COURSE_KEY                                          as course_key,
    COUNT(DISTINCT OFFERING_ID)                         as offering_count,
    COUNT(*)                                            as clicks,
    MAX_BY(COURSE_NAME_EN, EVENT_TS_UTC)                as course_name_en,
    MAX_BY(COURSE_NAME_TH, EVENT_TS_UTC)                as course_name_th,
    coalesce(
        max(path_type),
        case when course_key like 'abacus%' then 'abacus' end 
    )                                                   as program,
    min(EVENT_TS_UTC)                                   as min_event_ts_utc,
    max(EVENT_TS_UTC)                                   as max_event_ts_utc,
    try_to_number(regexp_substr(COURSE_KEY, 'grade\\s*(\\d+)', 1, 1, 'e', 1)) as grade,
    from ABACUS_DEV.INTERMEDIATE.int_course_interactions
    group by course_key




)

select * from course_catalog