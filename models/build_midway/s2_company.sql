{{ 
    config (materialized = 'table'

    )
}}
select 
company_id,
name as company_name,
link
from {{ref('s1_company')}}