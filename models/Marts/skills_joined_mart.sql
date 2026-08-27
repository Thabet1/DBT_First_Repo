{{ config(materialized='table') }}
select * from {{ref ('skills_joined')}}