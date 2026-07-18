-- =====================================================
-- Project : NYC Taxi Analytics Pipeline
-- Layer   : Staging
-- Model   : stg_taxi_trip
-- Author  : Ahmad Iqbal Maulana
-- Purpose : Filter NYC Yellow Taxi trips for Q1 2022
-- =====================================================
CREATE
OR REPLACE TABLE `data-analyst-portfolio-498910.analytics.stg_taxi_q1_2022` AS
SELECT
    pickup_datetime,
    dropoff_datetime,
    passenger_count,
    trip_distance,
    fare_amount,
    tip_amount,
    total_amount
FROM
    `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE
    DATE(pickup_datetime) BETWEEN '2022-01-01'
    AND '2022-03-31';