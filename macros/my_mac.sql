{%macro salary_level (insert_column) %}
case
when {{insert_column}} is null then 'come tomorrow'
when {{insert_column}} <= 70000 then 'dude you broke af'
when {{insert_column}} <= 100000 then 'you are getting somewhere now'
when {{insert_column}} <= 140000 then 'successful nigga'
else 'ok mr musk'
end
{%endmacro%}