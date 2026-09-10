CREATE OR REPLACE MODEL `retail-genai-kpi.Gold.gemini_model`
REMOTE WITH CONNECTION `retail-genai-kpi.us-central1.vertex_ai_connection`
OPTIONS (
  ENDPOINT = 'gemini-2.5-pro'
);