with 
source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (
    select
    cast (date_date as date) as date_date
    ,cast (orders_id as string) as orders_id
    ,cast (pdt_id as string) as products_id
    ,cast (quantity as int64) as quantity
    ,cast (revenue as numeric) as turnover
    from source
)

select * from renamed