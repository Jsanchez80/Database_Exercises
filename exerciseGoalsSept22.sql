-- Question 1. Find all employees with the same hire date as employee 101010 using a subquery:

-- Solution Note - found the date of employee 101010 by searching database using the following information: 
SELECT first_name, last_name, emp_no, hire_date FROM employees
WHERE emp_no = 101010;

-- Soulution Note - Once I determined the hire date of employee 101010, I used the following query to list employees with the same hire dated of employee 101010. Now I need to refactor this using a subquery. 
SELECT first_name, last_name, emp_no, hire_date 
FROM employees
WHERE hire_date = '1990-10-22';

