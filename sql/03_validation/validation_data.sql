-- =====================================================
-- Project : NYC Taxi Analytics Pipeline
-- Layer   : Validation
-- Model   : validation_data
-- Author  : Ahmad Iqbal Maulana
-- Purpose : Validate data completeness and record counts
-- =====================================================
SELECT
    COUNT(*) AS total_rows,
    MIN(DATE(pickup_datetime)) AS first_date,
    MAX(DATE(pickup_datetime)) AS last_date,
    SUM(passenger_count) AS total_passengers
FROM
    `data-analyst-portfolio-498910.analytics.stg_taxi_q1_2022`;