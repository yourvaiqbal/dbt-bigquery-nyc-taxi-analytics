
  
    

    create or replace table `data-analyst-portfolio-498910`.`analytics`.`mart_daily_trips`
      
    
    

    
    OPTIONS()
    as (
      SELECT
    DATE(pickup_datetime) AS trip_date,
    COUNT(*) AS total_trips,
    SUM(passenger_count) AS total_passengers,
    SUM(total_amount) AS total_revenue,
    AVG(total_amount) AS average_trip_value
FROM `data-analyst-portfolio-498910`.`analytics`.`stg_yellow_trip`
GROUP BY 1
ORDER BY 1
    );
  