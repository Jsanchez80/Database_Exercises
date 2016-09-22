-- Find all employees with the same hire date as employee 101010 using a subquery:

SELECT first_name, last_name, emp_no, hire_date FROM employees
WHERE emp_no = 101010;