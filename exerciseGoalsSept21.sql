DESCRIBE employees;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE departments;
DESCRIBE salaries;
DESCRIBE titles;

DESCRIBE albums;

USE codeup_test;
ALTER TABLE albums
ADD UNIQUE (artist);

USE codeup_test;
ALTER TABLE albums
ADD UNIQUE (name);

DESCRIBE albums;

SELECT * FROM employees;


