with 

source as (

    select * from {{ source('raw_data', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as products_id,
        revenue,
        quantity

    from source

)

select * from renamed
Order BY products_id asc
