{{ 
    config (materialized = 'table'

    )
}}
select 
*
from {{ref('s1_company')}}