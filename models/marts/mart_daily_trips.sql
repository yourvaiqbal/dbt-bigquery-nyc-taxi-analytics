select
    date(pickup_datetime) as trip_date,
    count(*) as total_trips,
    sum(total_amount) as total_revenue,
    sum(passenger_count) as total_passengers
from {{ ref('stg_taxi_trip') }}
group by 1
