select
    pickup_datetime,
    dropoff_datetime,
    passenger_count,
    trip_distance,
    fare_amount,
    tip_amount,
    total_amount

from {{ source('taxi_source', 'stg_taxi_q1_2022') }}
