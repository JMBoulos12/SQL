




/*
  Write a query that returns the number of genus of the animals caught in each plot in descending order. 
  21-January-2023
*/

SELECT surveys.plot_id, species.genus, COUNT(*)
FROM surveys
JOIN species ON surveys.species_id = species.species_id
GROUP BY species.genus, surveys.plot_id
ORDER BY surveys.plot_id, COUNT(*) DESC

