-- =====================================================
-- Project : NYC Taxi Analytics Pipeline
-- Layer   : Mart
-- Model   : mart_daily_trips
-- Author  : Ahmad Iqbal Maulana
-- Purpose : Aggregate daily trip and revenue metrics
-- =====================================================
CREATE
OR REPLACE TABLE `data-analyst-portfolio-498910.analytics.mart_daily_trips` AS
SELECT
    trip_date,
    trip_year,
    trip_quarter,
    trip_month,
    trip_month_name,
    COUNT(*) AS total_trips,
    SUM(total_amount) AS total_revenue,
    SUM(passenger_count) AS total_passengers
FROM
    `data-analyst-portfolio-498910.analytics.mart_taxi_dashboard`
GROUP BY
    trip_date,
    trip_year,
    trip_quarter,
    trip_month,
    trip_month_name
ORDER BY
    trip_date;