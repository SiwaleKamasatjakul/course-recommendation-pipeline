 -- noqa: Should accept a string instead of a integer
    
    
    ;
    -- dbt seed --
    
            insert overwrite into ABACUS_DEV.SEEDS.course_action_weights (ACTION, WEIGHT, DESCRIPTION) values
            (%s,%s,%s),(%s,%s,%s),(%s,%s,%s)
        

;
  