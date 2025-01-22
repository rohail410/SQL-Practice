-- CREATE DATABASE temp1;
-- create database temp2;
-- DROP DATABASE temp1;
-- DROP DATABASE temp2;
-- CREATE DATABASE IF NOT EXISTS college;
-- DROP DATABASE IF EXISTS temp1;

CREATE DATABASE college;

USE college;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES (1, "Haddiya", 18);
INSERT INTO student VALUES (2, "Rohail", 24);
INSERT INTO student VALUES (3, "Ayaan", 15);

SELECT * FROM student; 

SHOW DATABASES;
SHOW TABLES;


