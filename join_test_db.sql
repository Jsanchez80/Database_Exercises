-- Question 1. 
 
USE join_test_db;
CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

USE join_test_db;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);


INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

USE join_test_db;
INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

-- Question 2. I should have seperated each line with a comma to execute this data as one operation...it would allow my code to be cleaner. 
INSERT INTO users (name, email, role_id) VALUES ('Fer', 'Fer@example.com', '1');
INSERT INTO users (name, email, role_id) VALUES ('adriana', 'adrian@example.com', '2');
INSERT INTO users (name, email, role_id) VALUES ('cristina', 'cristina@example.com', '3');
INSERT INTO users (name, email, role_id) VALUES ('alessandra', 'alessandra@example.com', '4');

-- Question 3. Displays 8 of 10 people in the set: attached only people with values in the roles category of roles table. 
SELECT users.name, users.email, roles.name AS privilege FROM users JOIN roles ON users.role_id = roles.id;

-- Question 3b. Resulted in displaying info with 10 people(2 of which didn't show previously due to a null value in the roles category of roles table. 
SELECT users.name, users.email, roles.name AS privilege FROM users LEFT JOIN roles ON users.role_id = roles.id;

-- Question 3c.  Resulted in a similar display as Question 3 where the data does not show users with null value in the roles category of roles table. 
SELECT users.name, users.email, roles.name AS privilege FROM users RIGHT JOIN roles ON users.role_id = roles.id;

-- QUESTIONS FROM EMPLOYEES DATABASE:
-- Question 1. 
SELECT d.dept_name AS 'Department', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE now() BETWEEN dm.from_date AND dm.to_date;


-- Question 2. Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager', e.gender AS 'Gender'
FROM department AS d
JOIN dept_manager AS dm
  ON d.dept_no = dm.dept_no
JOIN employees AS e
  ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
AND e.gender = 'F';

-- Question 3. Find the current titles of employees currently working in the Customer Service department.

-- Question 4. Find the current salary of all current managers.
