SELECT *
FROM {{ ref('stg_raw_data__sales') }} as sales
INNER JOIN {{ ref('stg_raw_data__ship') }} as ship
  ON sales.orders_id=ship.orders_id