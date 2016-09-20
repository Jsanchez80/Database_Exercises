
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
