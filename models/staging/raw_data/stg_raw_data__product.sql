with 

source as (

    select * from {{ source('raw_data', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price,
        CAST(purchse_price as float64) AS purchase_price_float
    from source

)

select * from renamed
