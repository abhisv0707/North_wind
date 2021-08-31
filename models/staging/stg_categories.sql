{{ config (
    materialized="table"
)}}


select 
        categoryid as id,
        categoryname,
        substr(description,2,10) as desc
        from NORTH_WIND.DBT_NORTH_WIND.categories