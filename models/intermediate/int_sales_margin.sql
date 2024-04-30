SELECT *
    FROM {{ ref('stg_raw_data__sales') }} as sales
    INNER JOIN {{ ref('stg_raw_data__product') }} as product
    ON sales.products_id=product.products_id