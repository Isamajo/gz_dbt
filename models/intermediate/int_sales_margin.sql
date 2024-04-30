SELECT *
FROM gz_raw_data.raw_gz_sales AS sales
INNER JOIN gz_raw_data.raw_gz_ship AS ship
  ON sales.orders_id=ship.orders_id