SELECT DISTINCT title FROM titles;

SELECT DISTINCT title FROM titles
ORDER BY title ASC;

SELECT * FROM employees WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name;

SELECT DISTINCT * FROM employees WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY first_name ASC;

SELECT last_name FROM employees 
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
group BY last_name;