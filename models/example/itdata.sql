{{ config(materialized='table') }}

WITH FilteredData AS (
    SELECT * 
    FROM covid_epidemiology C
    WHERE key = 'IT'
)

SELECT * from FilteredData