USE codeup_test;
DROP TABLE IF EXISTS albums_seeder;
CREATE TABLE  albums_seeder (
id INT UNSIGNED AUTO_INCREMENT NOT NULL,
Artist VARCHAR(255) NOT NULL,
Album VARCHAR(100) NOT NULL,
Released YEAR(4) NOT NULL,
Genre VARCHAR(255) NOT NULL,
Sales_Certification VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

