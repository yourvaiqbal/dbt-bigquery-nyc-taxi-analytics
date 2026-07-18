
  
    

    create or replace table `data-analyst-portfolio-498910`.`analytics`.`mart_weekday_trips`
      
    
    

    
    OPTIONS()
    as (
      SELECT
    FORMAT_DATE('%A', DATE(pickup_datetime)) AS weekday_name,
    EXTRACT(DAYOFWEEK FROM DATE(pickup_datetime)) AS weekday_number,
    COUNT(*) AS total_trips,
    SUM(passenger_count) AS total_passengers,
    SUM(total_amount) AS total_revenue,
    AVG(total_amount) AS average_trip_value
FROM `data-analyst-portfolio-498910`.`analytics`.`stg_yellow_trip`
GROUP BY 1,2
ORDER BY 2
    );
  