{% macro course_key(name_col) -%}
    lower(trim(regexp_replace({{ name_col }}, '\\s*\\(.*\\)\\s*$', '')))
{%- endmacro %}
