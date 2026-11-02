 -- noqa: Should accept a string instead of a integer
    
    
    
    create table ABACUS_DEV.PR_TEST_SEEDS.course_action_weights (ACTION text,WEIGHT float8,DESCRIPTION text)
  ;
    -- dbt seed --
    
            insert overwrite into ABACUS_DEV.PR_TEST_SEEDS.course_action_weights (ACTION, WEIGHT, DESCRIPTION) values
            (%s,%s,%s),(%s,%s,%s),(%s,%s,%s)
        

;
  