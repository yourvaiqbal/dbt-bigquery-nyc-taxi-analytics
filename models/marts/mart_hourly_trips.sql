select
    extract(hour from pickup_datetime) as trip_hour,
    count(*) as total_trips,
    sum(total_amount) as total_revenue
from {{ ref('stg_taxi_trip') }}
group by 1
order by 1
