




/*
  Write queries that return:
  1- How many individuals were counted in each year.
  2- Average weight of each species in each year. 
  
  21-January-2023
*/

SELECT year, COUNT(*)
FROM surveys
GROUP BY year;

SELECT year, species_id, ROUND(AVG(weight), 2)
FROM surveys
GROUP BY year, species_id;
