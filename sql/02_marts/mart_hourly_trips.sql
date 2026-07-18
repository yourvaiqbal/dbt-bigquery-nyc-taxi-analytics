-- =====================================================
-- Project : NYC Taxi Analytics Pipeline
-- Layer   : Mart
-- Model   : mart_hourly_trips
-- Author  : Ahmad Iqbal Maulana
-- Purpose : Aggregate hourly trip distribution
-- =====================================================
CREATE
OR REPLACE TABLE `data-analyst-portfolio-498910.analytics.mart_hourly_trips` AS
SELECT
    trip_year,
    trip_quarter,
    trip_month,
    trip_month_name,
    trip_hour,
    COUNT(*) AS total_trips,
    SUM(total_amount) AS total_revenue,
    SUM(passenger_count) AS total_passengers
FROM
    `data-analyst-portfolio-498910.analytics.mart_taxi_dashboard`
GROUP BY
    trip_year,
    trip_quarter,
    trip_month,
    trip_month_name,
    trip_hour
ORDER BY
    trip_year,
    trip_month,
    trip_hour;