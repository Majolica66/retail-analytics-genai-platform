SELECT
ml_generate_text_result
FROM
ML.GENERATE_TEXT(
MODEL `retail-genai-kpi.Gold.gemini_model` ,

(
SELECT
CONCAT(
'Analyze these retail KPIs and generate an executive summary with recommendations. ',
'Online Revenue: ', online_revenue,
', Offline Revenue: ', offline_revenue,
', Total Revenue: ', total_revenue,
', Stockout Products: ', stockout_products,
', Inventory Mismatch %: ', inventory_mismatch_pct,
', Top Mismatched Product: ', top_mismatched_product
) AS prompt
FROM retail-genai-kpi.Gold.daily_kpi_summary
)
);