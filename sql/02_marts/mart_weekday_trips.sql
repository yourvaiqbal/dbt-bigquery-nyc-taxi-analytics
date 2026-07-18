-- =====================================================
-- Project : NYC Taxi Analytics Pipeline
-- Layer   : Mart
-- Model   : mart_weekday_trips
-- Author  : Ahmad Iqbal Maulana
-- Purpose : Aggregate trips and revenue by weekday
-- =====================================================
CREATE
OR REPLACE TABLE `data-analyst-portfolio-498910.analytics.mart_weekday_trips` AS
SELECT
    trip_year,
    trip_quarter,
    trip_month,
    trip_month_name,
    trip_weekday,
    weekday_number,
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
    trip_weekday,
    weekday_number
ORDER BY
    trip_year,
    trip_month,
    weekday_number;