CREATE OR REPLACE TABLE retail-genai-kpi.Gold.daily_kpi_summary AS

WITH revenue AS (

SELECT
CURRENT_DATE() AS date,

(
SELECT SUM(sales_amount)
FROM retail-genai-kpi.Silver.online_sales
) AS online_revenue,

(
SELECT SUM(weekly_sales)
FROM retail-genai-kpi.Silver.Offline_Sales
) AS offline_revenue,

(
SELECT COUNT(*)
FROM retail-genai-kpi.Silver.Inventory
WHERE inventory_qty = 0
) AS stockout_products,

(
SELECT ROUND(
100 *
SUM(ABS(online_qty-store_qty))
/
SUM(GREATEST(online_qty,store_qty)),
2
) FROM retail-genai-kpi.Silver.Inventory
) AS inventory_mismatch_pct,

(
SELECT product_id
FROM retail-genai-kpi.Silver.Inventory
ORDER BY (online_qty-store_qty) DESC
LIMIT 1
) AS top_mismatched_product

)

SELECT
date,
online_revenue,
offline_revenue,
online_revenue + offline_revenue AS total_revenue,
stockout_products,
inventory_mismatch_pct,
top_mismatched_product
FROM revenue