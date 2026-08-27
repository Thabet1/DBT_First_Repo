select
jd.*,
sc.company_name
from {{ref ('jobs_dated')}} as jd
join {{ref ('Stg_Company')}} as sc
on jd.company_ID = sc.company_ID