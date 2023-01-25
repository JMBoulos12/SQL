




/*
  Based on the customers and orders table from Practice Exercise #3, select the customer_id and last_name from the customers table where there is a record in the orders table for that customer_id. Order the results in ascending order by last_name and then descending order by customer_id.

  CREATE TABLE customers
  ( customer_id int NOT NULL,
    last_name char(50) NOT NULL,
    first_name char(50) NOT NULL,
    favorite_website char(50),
    CONSTRAINT customers_pk PRIMARY KEY (customer_id)
  );

  CREATE TABLE orders
  ( order_id int NOT NULL,
    customer_id int,
    order_date date,
    CONSTRAINT orders_pk PRIMARY KEY (order_id)
  ); 
  
  25-January-2023
*/

The following SQL SELECT statement would select the records from the customers and orders table (using the SQL EXISTS clause):

SELECT customer_id, last_name
FROM customers
WHERE EXISTS
  ( SELECT orders.customer_id
    FROM orders
    WHERE orders.customer_id = customers.customer_id )
ORDER BY last_name ASC, customer_id DESC;

Or alternatively you could exclude the ASC keyword for customer_name in the ORDER BY clause. Both of these SELECT statements would generate the same results:

SELECT customer_id, last_name
FROM customers
WHERE EXISTS
  ( SELECT orders.customer_id
    FROM orders
    WHERE orders.customer_id = customers.customer_id )
ORDER BY last_name, customer_id DESC;

These are the results that you should see:

customer_id	    last_name
  8000	        Anderson
  4000	        Jackson
  7000	        Reynolds
  5000	        Smith
