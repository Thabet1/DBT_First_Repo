select
job_id,
company_id,
job_title,
job_location,
job_via,
salary_year_avg,
salary_hour_avg,
job_posted_date
FROM {{ source ('raw', 'job_postings_fact')}}