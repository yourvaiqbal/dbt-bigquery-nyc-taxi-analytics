# NYC Taxi Analytics Pipeline with BigQuery, dbt, and Tableau

## Project Overview

An end-to-end Analytics Engineering project that transforms raw NYC Yellow Taxi trip data into an analytics-ready Data Mart using Google BigQuery and dbt, then delivers interactive business dashboards in Tableau.

The goal is to transform raw taxi trip records into business-ready datasets and create dashboards that provide insights into trip volume, revenue trends, passenger activity, and peak operating periods.

---

## Tech Stack

* BigQuery
* dbt Core
* GitHub
* Tableau Public
* SQL

---

## Dashboard Preview

[dashboard screenshot]

Tableau Public:
https://...

---

## Project Architecture

Raw Data (BigQuery)

↓

Source Layer

↓

Staging Layer (dbt)

↓

Mart Layer (dbt)

↓

CSV Export

↓

Tableau Dashboard

---

## dbt Models

### Source

* stg_taxi_q1_2022

### Staging

* stg_taxi_trip

### Mart

* mart_daily_trips
* mart_hourly_trips
* mart_weekday_trips
* mart_kpi_summary

## dbt Lineage

[image]

---

## Data Quality Tests

Implemented dbt tests:

* not_null pickup_datetime
* not_null total_amount

---

## Key Performance Indicators (KPIs)

* Total Trips
* Total Revenue
* Total Passengers
* Average Revenue per Trip
* Peak Operating Hours
* Busiest Weekdays

---

## Business Questions

1. Which days generate the highest number of trips?
2. Which hours are the busiest?
3. How much revenue is generated daily?
4. How many passengers are transported over time?

---

## Repository Structure

```text
models/
├── staging/
│   └── stg_taxi_trip.sql

└── marts/
    ├── mart_daily_trips.sql
    ├── mart_hourly_trips.sql
    ├── mart_weekday_trips.sql
    └── mart_kpi_summary.sql
```

---

## Project Status

* Data Source Connected
* dbt Models Built
* Data Tests Passed
* Documentation Generated
* Lineage Graph Created
* GitHub Repository Published
* Tableau Dashboard (In Progress)

---

## Author

Ahmad Iqbal Maulana

LinkedIn:
https://www.linkedin.com/in/ahmad-iqbal-maulana-9669b8228

GitHub:
https://github.com/yourvaiqbal
