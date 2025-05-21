{% macro format_date_ddmmyyyy(date_column) %}
  -- Assuming date_column is a date or string in 'YYYY-MM-DD' format
  to_char(cast({{ date_column }} as date), 'DD-MM-YYYY')
{% endmacro %}
