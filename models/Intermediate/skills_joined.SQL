select
s.*,
sj.job_id
from {{ref ('stg_skills_dim')}} as s
join {{ref ('stg_skills_job_dim')}} as sj
on s.SKILL_ID = sj.SKILL_ID