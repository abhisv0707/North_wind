{{ config (
    materialized="table"
)}}

select 
EMPLOYEEID as empid,
LASTNAME as LAST_NAME,
FIRSTNAME as FIRST_NAME,
TITLE,
COALESCE(COUNTRY,'NA') as COUNTRY
from NORTH_WIND.DBT_NORTH_WIND.employees