{{ config(materialized='table') }}

SELECT
    TO_NUMBER(TO_CHAR(full_date, 'YYYYMMDD')) AS date_key,
    full_date,
    YEAR(full_date)                            AS year,
    QUARTER(full_date)                          AS quarter,
    MONTH(full_date)                            AS month_number,
    MONTHNAME(full_date)                        AS month_name,
    DAY(full_date)                              AS day_of_month,
    DAYOFWEEK(full_date)                        AS day_of_week_number,
    DAYNAME(full_date)                          AS day_name,
    WEEKOFYEAR(full_date)                       AS week_of_year,
    CASE WHEN DAYOFWEEK(full_date) IN (0,6) THEN TRUE ELSE FALSE END AS is_weekend
FROM (
    SELECT DATEADD(day, SEQ4(), '2022-12-31') AS full_date
    FROM TABLE(GENERATOR(ROWCOUNT => 400))
) t
WHERE full_date <= '2023-12-31'