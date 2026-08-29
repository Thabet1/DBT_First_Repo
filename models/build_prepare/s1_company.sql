select
company_id,
name as company_name,
link as company_link
from {{source('raw','company_dim')}}