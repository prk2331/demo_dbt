{{ config(materialized='table') }}

WITH FilteredData AS (
    SELECT * 
    FROM "Genome".genomeschema.covid_epidemiology C
    WHERE key = 'IT'
)

SELECT * from FilteredData