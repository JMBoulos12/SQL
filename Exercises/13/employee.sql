




/*
  Based on the employees table below, select all fields from the employees table whose salary is less than or equal to $52,500 (no sorting is required):

  CREATE TABLE employees
  ( employee_number int NOT NULL,
    last_name char(50) NOT NULL,
    first_name char(50) NOT NULL,
    salary int,
    dept_id int,
    CONSTRAINT employees_pk PRIMARY KEY (employee_number)
  );

  INSERT INTO employees
  (employee_number, last_name, first_name, salary, dept_id)
  VALUES
  (1001, 'Smith', 'John', 62000, 500);

  INSERT INTO employees
  (employee_number, last_name, first_name, salary, dept_id)
  VALUES
  (1002, 'Anderson', 'Jane', 57500, 500);

  INSERT INTO employees
  (employee_number, last_name, first_name, salary, dept_id)
  VALUES
  (1003, 'Everest', 'Brad', 71000, 501);

  INSERT INTO employees
  (employee_number, last_name, first_name, salary, dept_id)
  VALUES
  (1004, 'Horvath', 'Jack', 42000, 501); 
  
  25-January-2023
*/

//  The following SQL SELECT statement would select these records from the employees table:

SELECT *
FROM employees
WHERE salary <= 52500;
