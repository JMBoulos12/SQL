




/*
  Write a query that returns the genus, the species, and the weight of every individual captured at the site. 
  21-January-2023
*/

SELECT species.genus, species.species_id, surveys.weight
FROM surveys
JOIN species ON surveys.species_id = species.species_id;
