




/*
  Based on the customers table and the orders table below, select the customer_id and last_name from the customers table and select the order_date from the orders table where there is a matching customer_id value in both the customers and orders tables. Order the results by customer_id in descending order.

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

  INSERT INTO customers
  (customer_id, last_name, first_name, favorite_website)
  VALUES
  (4000, 'Jackson', 'Joe', 'techonthenet.com');

  INSERT INTO customers
  (customer_id, last_name, first_name, favorite_website)
  VALUES
  (5000, 'Smith', 'Jane', 'digminecraft.com');

  INSERT INTO customers
  (customer_id, last_name, first_name, favorite_website)
  VALUES
  (6000, 'Ferguson', 'Samantha', 'bigactivities.com');

  INSERT INTO customers
  (customer_id, last_name, first_name, favorite_website)
  VALUES
  (7000, 'Reynolds', 'Allen', 'checkyourmath.com');

  INSERT INTO customers
  (customer_id, last_name, first_name, favorite_website)
  VALUES
  (8000, 'Anderson', 'Paige', NULL);

  INSERT INTO customers
  (customer_id, last_name, first_name, favorite_website)
  VALUES
  (9000, 'Johnson', 'Derek', 'techonthenet.com');

  INSERT INTO orders
  (order_id, customer_id, order_date)
  VALUES
  (1,7000,'2016/04/18');

  INSERT INTO orders
  (order_id, customer_id, order_date)
  VALUES
  (2,5000,'2016/04/18');

  INSERT INTO orders
  (order_id, customer_id, order_date)
  VALUES
  (3,8000,'2016/04/19');

  INSERT INTO orders
  (order_id, customer_id, order_date)
  VALUES
  (4,4000,'2016/04/20');

  INSERT INTO orders
  (order_id, customer_id, order_date)
  VALUES
  (5,null,'2016/05/01'); 
  
  25-January-2023
*/

The following SQL SELECT statement would select these records from the customers and orders table (using an INNER JOIN):

SELECT customers.customer_id, customers.last_name, orders.order_date
FROM customers 
INNER JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY customers.customer_id DESC;

These are the results that you should see:

customer_id   last_name	  order_date
8000	        Anderson	  2016/04/19
5000	        Smith	      2016/04/18
7000	        Reynolds	  2016/04/18
4000	        Jackson	    2016/04/20
