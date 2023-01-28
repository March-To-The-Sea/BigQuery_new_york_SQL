WITH borough_types AS
  (SELECT DISTINCT borough, Count(borough) AS occurence_value
  FROM bigquery-public-data.new_york.nypd_mv_collisions
  GROUP BY borough
  ORDER BY occurence_value DESC)

SELECT *
FROM borough_types