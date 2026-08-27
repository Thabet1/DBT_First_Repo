{% macro salary_bucket (column_in_question) %}

case
when {{column_in_question}} is null then 'No Salary Mentioned'
when {{column_in_question}} <= 50000 then 'Very Poor'
when {{column_in_question}} <= 80000 then 'Kinda Poor'
when {{column_in_question}} <=120000 then 'Not Bad Ha?'
Else 'You Happy Yet?'
end

{% endmacro %}