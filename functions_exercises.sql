
-- 2. 
SELECT COUNT(*), gender FROM employees
WHERE (first_name = 'Irena' OR  first_name = 'Vidya' OR first_name = 'Maya')
GROUP BY gender;

-- 3.
SELECT CONCAT(first_name,'', last_name) FROM employees WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY first_name;

-- 4
SELECT * FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
Order BY birth_date, hire_date DESC
LIMIT 5;

-- 5h
SELECT DISTINCT COUNT(*), last_name 
FROM employees 
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- EXERCISE 8.9
-- 2. 
SELECT CONCAT(first_name, ' ', last_name) as 'Full Name' 
FROM employees
ORDER BY 'Full Name'
LIMIT 10;

-- 3.
SELECT CONCAT(first_name, ' ', last_name) as 'Full Name' 
FROM employees
WHERE birth_date >= '1953-09-02'
ORDER BY 'Full Name'
LIMIT 10;

-- 4. Reversing the last name to print first orders the list according to last name. 
SELECT CONCAT(last_name , ' ', first_name,'   [', birth_date, ']') as 'Full Name' 
FROM employees
WHERE birth_date >= '1953-09-02'
ORDER BY 'Full Name'
LIMIT 10;

-- 4. cont'd... Update the query to format full name to include the employee number so it is formatted as "employee number - lastname, firstname".
SELECT CONCAT(emp_no, '-', last_name , ' ', first_name,'   [', birth_date, ']') as 'Full Name' 
FROM employees
WHERE birth_date >= '1953-09-02'
ORDER BY 'Full Name'
AND emp_no
LIMIT 10;
