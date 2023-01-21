




/*
  Write a query that returns the day, month, year, species ID, and weight (in kg) for individuals caught on Plot 1 that weigh more than 75 g. 
  21-January-2023
*/

SELECT
	surveys.day,
	surveys.month,
	surveys.year,
	species.species_id,
	surveys.weight / 1000.0
FROM surveys
JOIN species ON surveys.species_id = species.species_id
WHERE surveys.weight > 75
AND surveys.plot_id = 1;
