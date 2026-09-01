{{
    config(
        materialized = 'incremental',
        unique_key = 'job_id'
    )
}}
select *,

{{salary_level('salary_year_avg')}} as salary_status

 from {{ref('s1_job_postings')}}

{%if is_incremental()%}

where job_posted_date > (select max(job_posted_date) from {{this}})

{%endif%}