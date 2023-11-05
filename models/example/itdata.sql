{{ config(materialized='table') }}

WITH FilteredData AS (
    SELECT * 
    FROM "Genome".GenomeSchema.covid_epidemiology C
    WHERE key = 'IT'
)

SELECT * from FilteredData