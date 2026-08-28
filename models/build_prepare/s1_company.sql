select 
* from {{source('raw', 'company_dim')}}
-- CI test