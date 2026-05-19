{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- if target.name == 'dev' -%}
        {#- DEV: cała praca developera w jego osobistej schemie -#}
        DBT_DEV_{{ var('dev_user') | trim }}

    {%- elif custom_schema_name is none -%}
        {{ target.schema }}

    {%- else -%}
        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}