CREATE DATABASE COLLEGE;
CREATE DATABASE IF NOT EXISTS COLLEGE;
USE COLLEGE;

CREATE TABLE student (
id INT PRIMARY KEY, 
name VARCHAR (50),
age INT NOT NULL
);

INSERT INTO student VALUES (1, "SHABNAM", 21);
INSERT INTO student VALUES (2, "SIVA", 22);

 