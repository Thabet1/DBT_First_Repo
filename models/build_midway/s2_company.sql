{{ 
    config (materialized = 'table'

    )
}}
select 
company_id,
name as company_name,
link as company_link
from {{ref('s1_company')}}