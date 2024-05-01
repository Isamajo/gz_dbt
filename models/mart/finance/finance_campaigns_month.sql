SELECT
  DATE_TRUNC(date_date, MONTH) AS month,
  SUM(ads_cost_total) AS ads_cost_total,
  SUM(impression_total) AS impression_total,
  SUM(click_total) AS click_total,
  SUM(nb_transactions) AS nb_transactions,
  SUM(revenue) AS revenue,
  SUM(average_basket) AS average_basket,
  SUM(average_basket_bis) AS average_basket_bis,
  SUM(margin) AS margin,
  SUM(operational_margin) AS operational_margin,
  SUM(purchase_cost) AS purchase_cost,
  SUM(shipping_fee) AS shipping_fee,
  SUM(logcost) AS logcost,
  SUM(ship_cost) AS ship_cost,
  SUM(quantity) AS quantity,
  SUM(ads_margin) AS ads_margin
FROM
  {{ref("finance_campaigns_day")}}
GROUP BY
  month
ORDER BY
  month