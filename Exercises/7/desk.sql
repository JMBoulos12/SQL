




/*
  Write a query that returns the number of each species caught in each year sorted from most often caught species to the least occurring ones within each year starting from the most recent records. 
  21-January-2023
*/

SELECT species_id, year, COUNT(species_id)
FROM survey
GROUP BY year species_id
ORDER BY year DESC, COUNT(species_id) DESC
