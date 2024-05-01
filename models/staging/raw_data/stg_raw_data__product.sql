with 

source as (

    select * from {{ source('raw_data', 'product') }}

),

renamed as (

    select
        products_id,
        CAST (purchse_price as float64) AS Purchase_price
    from source

)

select * from renamed
