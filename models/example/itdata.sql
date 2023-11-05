{{ config(materialized='table') }}

WITH FilteredData AS (
    SELECT * 
    FROM GenomeSchema.covid_epidemiology C
    WHERE key = 'IT'
)

SELECT * from FilteredData