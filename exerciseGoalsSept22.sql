-- Question 1. Find all employees with the same hire date as employee 101010 using a subquery:

-- Solution Note - found the date of employee 101010 by searching database using the following information: 
SELECT first_name, last_name, emp_no, hire_date FROM employees
WHERE emp_no = 101010;

-- Soulution Note - Once I determined the hire date of employee 101010, I used the following query to list employees with the same hire dated of employee 101010. Now I need to refactor this using a subquery. 
SELECT first_name, last_name, emp_no, hire_date 
FROM employees
WHERE hire_date = '1990-10-22';

SELECT * 
FROM employees
WHERE hire_date = (
	SELECT hire_date
	FROM employees
	WHERE emp_no = '101010'
);
	

-- Solution Note - 



-- Question 2. Find all the titles held by all employees with the first name Aamod.
DESCRIBE titles;
-- Query produced Field Types as follows:
--  emp_no, title, from_date, to dated
DESCRIBE employees;
-- Query produced Field Types as follows:
-- emp_no, birth_date, first_name, last_name, gender and hire_date

-- Similar fields in both data sets are emp_no. You should be able to create a join on the emp_no.

-- Query for the name Aamod yields 216 results using the query created below: 
SELECT *
FROM employees
WHERE first_name = 'Aamod';

-- Query produced below allows you to see how the employee grew in their company possibly as their education improved or their title changed due to promotion/education. 
-- Now that you have a viable solution, let's work on refactoring data to produce a subquery based on the solution below.
   
Select hire_date, first_name, last_name, title, birth_date
FROM employees AS e
JOIN titles as t
	ON e.emp_no = t.emp_no
WHERE e.first_name = 'Aamod'
ORDER BY e.last_name;

-- Refactored a bit to give it a different output
SELECT title
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
) GROUP BY title;

-- Question 3. Find all the department managers that are female.
DESCRIBE employees;
-- Query produced Field Types as follows:
-- emp_no, birth_date, first_name, last_name, gender and hire_date
DESCRIBE dept_manager;
-- Query produced Field Types as follows:
-- dept_no, emp_no, from_date and to_date
DESCRIBE departments;
-- Query produced Field Types as follows:
-- dept_no, dept_name 
SELECT first_name, last_name, gender 



-- Refactored as a subquery:
SELECT *
FROM employees 
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_manager
	WHERE to_date = '9999-01-01'
) AND gender ='F';

