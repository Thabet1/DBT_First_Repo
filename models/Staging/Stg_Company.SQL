SELECT 
company_ID,
name as company_name,
link
FROM {{source ('raw','company_dim')}}