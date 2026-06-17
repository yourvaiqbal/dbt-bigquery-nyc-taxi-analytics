select
    format_date('%A', date(pickup_datetime)) as weekday,
    count(*) as total_trips,
    sum(total_amount) as total_revenue
from {{ ref('stg_taxi_trip') }}
group by 1
order by total_trips desc
