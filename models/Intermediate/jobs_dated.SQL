select
jp.*,
id.*
from {{ref ('stg_job_postings_fact')}} as jp
join {{ref ('int_date_dim')}} as id
on jp.job_posted_date::DATE = id.full_date::DATE