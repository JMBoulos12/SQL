




/*
  Write query that returns: total weight, average weight, and the min and max weights for all animals caught over the duration of the survey. 
  Can you modify it so that it outputs that for a range of weights? 
  21-January-2023
*/

SELECT SUM(weight), AVG(weight), MIN(weight), MAX(weight) FROM surveys
SELECT SUM(weight), AVG(weight), MIN(weight), MAX(weight) FROM surveys WHERE weight > 50 AND weight < 100
