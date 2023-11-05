{{ config(materialized='table') }}

WITH FilteredData AS (
    SELECT * 
    FROM {{ ref('covid_epidemiology') }} C
    WHERE key = 'IT'
)

SELECT * from FilteredData