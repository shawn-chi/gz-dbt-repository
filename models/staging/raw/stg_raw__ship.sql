with source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (
    select
        CAST(orders_id as string) AS orders_id
        ,CAST(shipping_fee as float64) AS shipping_fee
        ,CAST(shipping_fee_1 as float64) AS shipping_fee_1
        ,CAST(logcost as float64) AS log_cost
        ,CAST(ship_cost as float64) AS ship_cost
    from source

)

select * from renamed