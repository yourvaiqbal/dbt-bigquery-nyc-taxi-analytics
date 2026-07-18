
  
    

    create or replace table `data-analyst-portfolio-498910`.`analytics`.`mart_kpi_summary`
      
    
    

    
    OPTIONS()
    as (
      SELECT
    COUNT(*) AS total_trips,
    SUM(passenger_count) AS total_passengers,
    SUM(total_amount) AS total_revenue,
    AVG(total_amount) AS average_trip_value,
    AVG(trip_distance) AS average_trip_distance,
    SUM(fare_amount) AS total_fare,
    SUM(tip_amount) AS total_tip
FROM `data-analyst-portfolio-498910`.`analytics`.`stg_yellow_trip`
    );
  