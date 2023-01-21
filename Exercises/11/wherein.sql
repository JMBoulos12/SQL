




/*
  Write a query that returns day, month, year, species ID for individuals caught in January, May and July. 
  21-January-2023
*/

SELECT day, month, year, species_id
FROM surveys
WHERE month IN (1, 5, 7);

