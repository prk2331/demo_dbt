WITH FilteredData AS (
    SELECT 
      cast(key as varchar) as "mykey",
      date as "mydate",
      new_tested as mynew_tested
      FROM genomeschema.covid_epidemiology C
      WHERE key = 'IT'
)

SELECT * from FilteredData


