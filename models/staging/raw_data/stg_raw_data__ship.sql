with 

source as (

    select * from {{ source('raw_data', 'ship') }}

),

renamed as (

    select
        orders_id,
        CAST(shipping_fee as float64) as shipping_fee,
        CAST(logcost as float64) as logcost,
        CAST(ship_cost as float64) as ship_cost

    from source

)

select * from renamed
