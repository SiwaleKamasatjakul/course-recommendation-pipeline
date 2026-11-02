{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- set base = (custom_schema_name or target.schema) | trim | upper -%}

    {%- if target.name == 'ci' -%}
        {#- CI: PR_12 + INTERMEDIATE -> PR_12_INTERMEDIATE -#}
        {{ target.schema | trim | upper }}_{{ base }}
    {%- else -%}
        {#- dev and prod: STAGING / INTERMEDIATE / MARTS (same as before) -#}
        {{ base }}
    {%- endif -%}
{%- endmacro %}