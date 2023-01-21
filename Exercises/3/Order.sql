




/*
  Write a query that returns year, species ID, and weight in kg from the surveys table, sorted with the largest weights at the top. 
  21-January-2023
*/

SELECT year, species_id, weight / 1000.0
FROM surveys ORDER BY weight DESC;
