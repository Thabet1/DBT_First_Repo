{{ config(
    materialized='incremental',
    unique_key='job_id'
) }}

SELECT
* FROM  {{ source ('raw', 'job_postings_fact') }}

{% if is_incremental() %}
WHERE job_posted_date > (SELECT MAX(job_posted_date) FROM {{ this }})
{% endif %}