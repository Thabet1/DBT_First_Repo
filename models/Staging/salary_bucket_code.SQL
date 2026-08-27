SELECT *,
{{ salary_bucket ('salary_year_avg') }} as salary_class
FROM {{ ref ('stg_job_postings_fact')}}