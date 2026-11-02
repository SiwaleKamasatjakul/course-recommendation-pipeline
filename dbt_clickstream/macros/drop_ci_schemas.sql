{% macro drop_ci_schemas(prefix) %}

    {% set prefix = prefix | trim | upper %}

    {# safety: never drop real schemas like STAGING #}
    {% if not prefix.startswith('PR_') %}
        {{ exceptions.raise_compiler_error("prefix must start with PR_, got: " ~ prefix) }}
    {% endif %}

    {% for s in ['STAGING', 'INTERMEDIATE', 'MARTS', 'SEEDS'] %}
        {% set sql = 'drop schema if exists ' ~ target.database ~ '.' ~ prefix ~ '_' ~ s %}
        {% do log(sql, info=True) %}
        {% do run_query(sql) %}
    {% endfor %}

{% endmacro %}