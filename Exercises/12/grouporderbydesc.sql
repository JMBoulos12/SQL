




/*
  Write a query that returns the number of each species caught in each year sorted from most often caught species to the least occurring ones 
  within each year starting from the most recent records. 
  21-January-2023
*/

SELECT year, species_id, COUNT(*)
FROM surveys
GROUP BY year, species_id
ORDER BY year DESC, COUNT(*) DESC;
