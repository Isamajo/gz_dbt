SELECT
  *
  ,CAST(s.operational_margin AS FLOAT64) - CAST(o.ads_cost_total AS FLOAT64) AS ads_margin
FROM {{ref("int_campaigns_day")}} o
LEFT JOIN {{ref("finance_days")}} s 
  USING(date_date)
ORDER BY date_date DESC