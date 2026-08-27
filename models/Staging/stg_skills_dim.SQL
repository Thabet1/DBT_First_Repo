SELECT
SKILL_ID,
SKILLS AS SKILL_NAME,
TYPE AS SKILL_TYPE
FROM {{source ('raw', 'skills_dim')}}