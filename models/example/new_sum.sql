WITH FilteredData AS (
    SELECT 
      key,
      total_confirmed,
      total_deceased,
      (total_confirmed - total_deceased) AS NEW_BAL
      FROM "Genome".GenomeSchema.covid_epidemiology C
      WHERE key = 'IT'
)

SELECT * from FilteredData