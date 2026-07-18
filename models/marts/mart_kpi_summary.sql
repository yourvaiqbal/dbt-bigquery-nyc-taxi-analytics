select
    count(*) as total_trips,
    round(sum(total_amount), 2) as total_revenue,
    round(avg(total_amount), 2) as avg_fare,
    round(avg(passenger_count), 2) as avg_passengers,
    round(avg(trip_distance), 2) as avg_trip_distance
from {{ ref('stg_taxi_trip') }}
