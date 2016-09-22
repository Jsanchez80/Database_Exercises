-- Question 1. Find all employees with the same hire date as employee 101010 using a subquery:

-- Solution Note - found the date of employee 101010 by searching database using the following information: 
SELECT first_name, last_name, emp_no, hire_date FROM employees
WHERE emp_no = 101010;

-- Soulution Note - Once I determined the hire date of employee 101010, I used the following query to list employees with the same hire dated of employee 101010. Now I need to refactor this using a subquery. 
SELECT first_name, last_name, emp_no, hire_date 
FROM employees
WHERE hire_date = '1990-10-22';

-- Solution Note - 



-- Question 2. Find all the titles held by all employees with the first name Aamod.
DESCRIBE titles;
-- Query produced Field Types as follows
--  emp_no, title, from_date, to dated
DESCRIBE employees;
-- Query produced Field Types as follows
-- emp_no, birth_date, first_name, last_name, gender and hire_date

-- Similar fields in both data sets are emp_no. You should be able to create a join on the emp_no.

-- Query for the name Aamod yields 216 results using the query created below: 
SELECT *
FROM employees
WHERE first_name = 'Aamod';
