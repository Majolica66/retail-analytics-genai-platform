SELECT
ml_generate_text_result
FROM ML.GENERATE_TEXT(
  MODEL `retail-genai-kpi.Gold.gemini_model`,
  (
    SELECT
      CONCAT(
      'Generate an executive business summary. ',
      'Total Revenue=', total_revenue,
      ', Online Revenue=', online_revenue,
      ', Offline Revenue=', offline_revenue,
      ', Stockout Products=', stockout_products,
      ', Inventory Mismatch=', inventory_mismatch_pct,
      ', Top Mismatched Product=', top_mismatched_product
      ) AS prompt
    FROM `retail-genai-kpi.Gold.daily_kpi_summary`
    ORDER BY date DESC
    LIMIT 1
  )
);