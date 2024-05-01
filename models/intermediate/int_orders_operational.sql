SELECT
  o.orders_id
  ,o.date_date
  ,ROUND(o.margin + CAST(s.shipping_fee as FLOAT64) - (CAST(s.logcost as FLOAT64) + CAST(s.ship_cost as FLOAT64)),2) AS operational_margin 
  ,o.quantity
  ,o.revenue
  ,o.purchase_cost
  ,o.margin
  ,CAST(s.shipping_fee AS FLOAT64) as shipping_fee
  ,CAST(s.logcost AS FLOAT64) as logcost
  ,CAST(s.ship_cost AS FLOAT64) as ship_cost
FROM {{ref("int_orders_margin")}} o
LEFT JOIN {{ref("stg_raw_data__ship")}} s 
  USING(orders_id)
ORDER BY orders_id desc