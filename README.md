# Retail Analytics & GenAI Executive Reporting Platform

## Overview

This project demonstrates an end-to-end Data Engineering and Generative AI solution on Google Cloud Platform.

The platform ingests retail sales and inventory data, transforms it through a Bronze-Silver-Gold architecture, generates business KPIs, and creates AI-powered executive summaries using Vertex AI Gemini.

## Architecture

Cloud Storage (Bronze)
      ↓
BigQuery Silver
      ↓
BigQuery Gold
      ↓
Looker Studio Dashboard
      ↓
Vertex AI Gemini Executive Summary

## Technology Stack

- Google Cloud Storage
- BigQuery
- Looker Studio
- Vertex AI Gemini
- BigQuery Scheduled Queries
- SQL

## Key Features

- Data Lake Architecture
- KPI Reporting
- Revenue Analytics
- Inventory Monitoring
- AI Generated Executive Summaries
- Automated Weekly Reporting

## Dashboard

https://datastudio.google.com/reporting/f2d1cb28-cdf1-4f8a-bba3-eaf963fd7cab/page/tOc8F

## Project Outcomes

- Automated KPI generation
- Business insights generation using GenAI
- End-to-end analytics pipeline
