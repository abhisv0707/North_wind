{{ config (
    materialized="table"
)}}

with categories as (
    select * from {{ ref('stg_categories')}}
),

employees as (
    select * from {{ ref('stg_employees')}}
),

employee as (

    select
        categories.id,
        categories.categoryname,
        employees.empid,
        employees.FIRST_NAME,
        employees.LAST_NAME

    from categories

    join employees where employees.empid=categories.id

)

select * from employee

