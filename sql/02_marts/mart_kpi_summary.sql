-- =====================================================
-- Project : NYC Taxi Analytics Pipeline
-- Layer   : Mart
-- Model   : mart_kpi_summary
-- Author  : Ahmad Iqbal Maulana
-- Purpose : Generate executive KPI summary
-- =====================================================
CREATE
OR REPLACE TABLE `data-analyst-portfolio-498910.analytics.mart_kpi_summary` AS
SELECT
    trip_year,
    trip_quarter,
    trip_month,
    trip_month_name,
    COUNT(*) AS total_trips,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS avg_fare,
    ROUND(AVG(passenger_count), 2) AS avg_passengers
FROM
    `data-analyst-portfolio-498910.analytics.mart_taxi_dashboard`
GROUP BY
    trip_year,
    trip_quarter,
    trip_month,
    trip_month_name
ORDER BY
    trip_year,
    trip_month;