-- =====================================================
-- Project : NYC Taxi Analytics Pipeline
-- Layer   : Mart
-- Model   : mart_taxi_dashboard
-- Author  : Ahmad Iqbal Maulana
-- Purpose : Create dashboard-ready analytics table
-- =====================================================
CREATE
OR REPLACE TABLE `data-analyst-portfolio-498910.analytics.mart_taxi_dashboard` AS
SELECT
    DATE(pickup_datetime) AS trip_date,
    EXTRACT(
        YEAR
        FROM
            pickup_datetime
    ) AS trip_year,
    CONCAT(
        'Q',
        CAST(
            EXTRACT(
                QUARTER
                FROM
                    pickup_datetime
            ) AS STRING
        )
    ) AS trip_quarter,
    EXTRACT(
        MONTH
        FROM
            pickup_datetime
    ) AS trip_month,
    FORMAT_DATE('%B', DATE(pickup_datetime)) AS trip_month_name,
    FORMAT_DATE('%A', DATE(pickup_datetime)) AS trip_weekday,
    EXTRACT(
        DAYOFWEEK
        FROM
            pickup_datetime
    ) AS weekday_number,
    EXTRACT(
        HOUR
        FROM
            pickup_datetime
    ) AS trip_hour,
    passenger_count,
    trip_distance,
    fare_amount,
    tip_amount,
    total_amount
FROM
    `data-analyst-portfolio-498910.analytics.stg_taxi_trip`;