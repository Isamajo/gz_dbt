SELECT 
SUM(CAST(purchase_price as float64)* CAST(quantity as float64)) AS purchase_cost_cal
    FROM {{ ref('stg_raw_data__sales') }} as sales
    INNER JOIN {{ ref('stg_raw_data__product') }} as product
    ON sales.products_id=product.products_id