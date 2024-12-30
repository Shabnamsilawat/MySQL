CREATE DATABASE college;
USE college;
CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR (50),
marks INT NOT NULL,
grade VARCHAR(1),
City VARCHAR(20)
);
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");
use college;
SELECT*FROM student WHERE marks>90 AND city="Mumbai";
SELECT*FROM student WHERE marks>90 OR city="Mumbai";
use college;
SELECT*FROM student WHERE marks BETWEEN 80 and 90;
SELECT*FROM student WHERE city IN ("Delhi","Mumbai"); 
SELECT*FROM student WHERE city NOT IN ("Delhi","Mumbai");
SELECT*FROM student LIMIT 3;
SELECT*FROM student WHERE marks>75 LIMIT 3;
SELECT*FROM student ORDER BY city ASC;
SELECT*FROM student ORDER BY city DESC;
SELECT*FROM student ORDER BY marks ASC;
SELECT*FROM student ORDER BY marks DESC;
SELECT*FROM student ORDER BY marks ASC LIMIT 3;
SELECT*FROM student ORDER BY marks DESC LIMIT 3;
SELECT MAX(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT SUM(marks)FROM student;
SELECT COUNT(marks)FROM student;
SELECT city,COUNT(rollno) FROM student GROUP BY city;
SELECT name, COUNT(rollno) FROM student GROUP BY name;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY city;
use college;
SELECT city FROM student GROUP BY city;
SELECT city, count(rollno) FROM student GROUP BY city;
SELECT city, count(rollno) FROM student GROUP BY city HAVING MAX(marks)>90;
SELECT city FROM student WHERE grade="A" GROUP BY city HAVING MAX(marks)>=93 ORDER BY city ASC;
SELECT city FROM student WHERE grade="A" GROUP BY city HAVING MAX(marks)>=93 ORDER BY city DESC;
USE college;
SET SQL_SAFE_UPDATES=0;
UPDATE student
SET grade="O"
WHERE grade="A";
SELECT*FROM student;
UPDATE student
SET marks=82
WHERE rollno=105;
SELECT*FROM student;
UPDATE student
SET grade="B"
WHERE marks BETWEEN 80 AND 90;
SELECT*FROM student;
UPDATE student
SET marks=marks+1;
SELECT*FROM student;
DELETE FROM student
WHERE marks<30;
USE college;
ALTER TABLE student
ADD COLUMN age INT;
ALTER TABLE student
DROP COLUMN age;
USE college;
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;
ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);
ALTER TABLE student
CHANGE age stu_age INT;
ALTER TABLE student
DROP COLUMN stu_age;
ALTER TABLE student
RENAME TO stu;
ALTER TABLE stu
RENAME TO student;
TRUNCATE TABLE student;
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");
USE college;
SELECT*FROM student;
ALTER TABLE student
CHANGE name full_name VARCHAR(50);
SET SQL_SAFE_UPDATES=0;
DELETE FROM student
WHERE marks<80;
ALTER TABLE student
DROP COLUMN grade;
DROP TABLE student;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR (50)
);
INSERT INTO student (id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103, "casey");
CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50)
);
INSERT INTO course(id,course)
VALUES
(102,"english"),
(105,"math"), 
(103,"science"),
(107,"computer science");
SELECT*FROM course;
SELECT*
FROM student
INNER JOIN course
ON student.id = course.id;
SELECT*
FROM student
LEFT JOIN course
ON student.id = course.id;
SELECT*FROM student
RIGHT JOIN course
ON student.id = course.id;
SELECT*FROM student
LEFT JOIN course
ON student.id=course.id
UNION
SELECT*FROM student 
RIGHT JOIN course
ON student.id=course.id;
SELECT*FROM student
LEFT join course
ON student.id = course.id
WHERE course.id IS NULL;
SELECT*FROM student
RIGHT join course
ON student.id = course.id
WHERE student.id IS NULL;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR (50),
manager_id INT
);
INSERT INTO employee (id,name,manager_id)
VALUES
(101,"Adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);
SELECT*FROM employee;
SELECT*
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;
SELECT a.name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;
SELECT name FROM employee
UNION
SELECT name FROM employee;
DROP TABLE student;
CREATE TABLE student;
SELECT AVG(marks)
FROM student;