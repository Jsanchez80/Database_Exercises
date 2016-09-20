SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'Z%'
GROUP BY last_name DESC
LIMIT 10;