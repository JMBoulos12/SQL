




/*
  Let’s try to combine what we’ve learned so far in a single query. 
  Using the surveys table write a query to display the three date fields, species ID, 
  and weight in kilograms (rounded to two decimal places), for rodents captured in 1999, ordered alphabetically by the species ID. 
  
  21-January-2023
*/

SELECT year, month, day, species_id, ROUND(weight / 1000.0, 2)
FROM surveys
WHERE year = 1999
ORDER BY species_id;
