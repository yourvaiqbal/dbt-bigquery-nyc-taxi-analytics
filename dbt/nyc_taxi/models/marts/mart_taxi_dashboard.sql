SELECT
    DATE(pickup_datetime) AS trip_date,
    EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
    FORMAT_DATE('%A', DATE(pickup_datetime)) AS weekday,
    COUNT(*) AS total_trips,
    SUM(passenger_count) AS total_passengers,
    SUM(total_amount) AS total_revenue,
    AVG(total_amount) AS average_trip_value,
    AVG(trip_distance) AS average_trip_distance,
    SUM(fare_amount) AS total_fare,
    SUM(tip_amount) AS total_tip
FROM {{ ref('stg_yellow_trip') }}
GROUP BY
    1,2,3
ORDER BY
    1,2