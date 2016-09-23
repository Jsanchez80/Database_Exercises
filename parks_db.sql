USE codeup_test;
DROP TABLE IF EXISTS parks_db;
CREATE TABLE  parks_db (
id INT UNSIGNED AUTO_INCREMENT NOT NULL,
name VARCHAR(255) NOT NULL,
location VARCHAR(255) NOT NULL,
date_established VARCHAR(100) NOT NULL,
area VARCHAR(150) NOT NULL,
PRIMARY KEY(id)
);

USE codeup_test;
TRUNCATE TABLE parks_db;
INSERT INTO parks_db
(name,
location,
date_established,
area)
VALUES
('Acadia',
'Maine',
'February, 26, 1919',
'47,389.67');
INSERT INTO parks_db
(name,
location,
date_established,
area)
VALUES
('American Somoa',
'American Samoa',
'October 31, 1988',
'9,000');
INSERT INTO parks_db
(name,
location,
date_established,
area)
VALUES
('Arches',
'Utah',
'November 12, 1971',
'76,518.98');
  
Select * FROM parks_db;

