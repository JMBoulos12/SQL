




/*
  Based on the suppliers table below, select the unique city values that reside in the state of California and order the results in descending order by city:

  CREATE TABLE suppliers
  ( supplier_id int NOT NULL,
    supplier_name char(50) NOT NULL,
    city char(50),
    state char(25),
    CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id)
  );

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (100, 'Microsoft', 'Redmond', 'Washington');

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (200, 'Google', 'Mountain View', 'California');

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (300, 'Oracle', 'Redwood City', 'California');

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (400, 'Kimberly-Clark', 'Irving', 'Texas');

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (500, 'Tyson Foods', 'Springdale', 'Arkansas');

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (600, 'SC Johnson', 'Racine', 'Wisconsin');

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (700, 'Dole Food Company', 'Westlake Village', 'California');

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (800, 'Flowers Foods', 'Thomasville', 'Georgia');

  INSERT INTO suppliers
  (supplier_id, supplier_name, city, state)
  VALUES
  (900, 'Electronic Arts', 'Redwood City', 'California'); 
  
  25-January-2023
*/

The following SELECT statement would select these records from the suppliers table:

SELECT DISTINCT city
FROM suppliers
WHERE state = 'California'
ORDER BY city DESC;
