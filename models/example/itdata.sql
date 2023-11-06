{{ config(materialized='table') }}

WITH FilteredData AS (
    SELECT * 
    FROM GENOMESCHEMA.covid_epidemiology C
    WHERE key = 'IT'
)

SELECT * from FilteredData