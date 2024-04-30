WITH sales_ship_comb as

(SELECT
FROM {{ ref('stg_raw_data__sales') }} as sales
INNER JOIN {{ ref('stg_raw_data__ship') }} as ship
  ON sales.orders_id=ship.orders_id)


SELECT *
    ,SUM(purchase_price*quantity) AS purchase_cost
    SUM(revenue-purchase_cost) AS margin
FROM sales_ship_comb