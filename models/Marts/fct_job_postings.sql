{{ config(materialized='incremental', unique_key= 'job_id') }}
select *,
{{salary_bucket ('salary_year_avg')}} as salary_category
from {{ref('job_date_company')}}
{% if is_incremental() %}
where job_posted_date > (select max (job_posted_date) from {{this}})
{% endif %}
