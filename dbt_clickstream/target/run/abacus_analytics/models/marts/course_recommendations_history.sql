begin;
    insert into ABACUS_DEV.MARTS.course_recommendations_history ("ACTOR_ID", "RECOMMENDATION_RANK", "COURSE_KEY", "COURSE_NAME_EN", "COURSE_NAME_TH", "PROGRAM", "SCORE", "REASON", "GENERATED_AT")
    (
        select "ACTOR_ID", "RECOMMENDATION_RANK", "COURSE_KEY", "COURSE_NAME_EN", "COURSE_NAME_TH", "PROGRAM", "SCORE", "REASON", "GENERATED_AT"
        from ABACUS_DEV.MARTS.course_recommendations_history__dbt_tmp
    )

;
    commit;