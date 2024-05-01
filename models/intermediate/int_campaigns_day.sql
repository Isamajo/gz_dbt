SELECT
date_date,
SUM(ads_cost) as ads_cost_total,
SUM(impression) as impression_total,
SUM(click) as click_total,
FROM {{ref("int_campaigns")}}
GROUP BY date_date