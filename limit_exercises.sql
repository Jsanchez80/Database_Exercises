SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'Z%'
GROUP BY last_name DESC
LIMIT 10;

-- 3.
SELECT * FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
Order BY birth_date, hire_date DESC
LIMIT 5;
