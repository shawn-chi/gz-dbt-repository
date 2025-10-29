with 
source as (
    select * from {{ source('raw', 'product') }}
),

renamed as (
    select
        cast(products_id as string) as products_id
        ,cast(purchSE_PRICE as float64) as purchse_price 
    from source
)

select * from renamed
