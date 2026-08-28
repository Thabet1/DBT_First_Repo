{{ config(severity='warn') }}

select *
from {{ ref('job_date_company') }}
where salary_year_avg < 0