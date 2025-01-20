
-- CREATE TABLE employees (
--     id INT PRIMARY KEY,         -- Employee ID (Primary Key)
--     name VARCHAR(100),          -- Employee Name
--     city VARCHAR(100),          -- City where the employee works
--     department VARCHAR(100)     -- Department of the employee
-- );

-- INSERT INTO employees (id, name, city, department) VALUES
-- (1, 'Alice', 'New York', 'HR'),
-- (2, 'Bob', 'New York', 'IT'),
-- (3, 'Carol', 'Chicago', 'IT'),
-- (4, 'David', 'New York', 'HR'),
-- (5, 'Eve', 'Chicago', 'Finance');

-- Select distinct
-- city, department 
-- from employees;


-- -- Create Table
-- CREATE TABLE Customers (
--     customer_id INT PRIMARY KEY,
--     customer VARCHAR(50),
--     mode VARCHAR(20),
--     city VARCHAR(50)
-- );

-- -- Insert Data
-- INSERT INTO Customers (customer_id, customer, mode, city) VALUES
-- (101, 'Olivia Barrett', 'Netbanking', 'Portland'),
-- (102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
-- (103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
-- (104, 'Liam Donovan', 'Netbanking', 'Denver'),
-- (105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
-- (106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
-- (107, 'Ava Patel', 'Debit Card', 'Phoenix'),
-- (108, 'Lucas Carter', 'Netbanking', 'Boston'),
-- (109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
-- (110, 'Jackson Brooks', 'Credit Card', 'Boston');


-- Select * from Customers;

-- Select mode, count(mode)
-- from Customers
-- group by mode;



DROP DATABASE college;
CREATE DATABASE college;
USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "rohail", 78, "C", "Rawalpindi"),
(102, "haddiya", 93, "A", "Islamabad"),
(103, "ayaan", 85, "B", "Islamabad"),
(104, "hania", 96, "A", "Lahore"),
(105, "rafay", 12, "F", "Lahore"),
(106, "khadija", 82, "B", "Lahore");

Select * from student;

ALTER TABLE student
DROP COLUMN grade;

DELETE from student
WHERE marks < 80;

ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);

Drop table student;

ALTER TABLE stu
RENAME TO student;

ALTER TABLE student
DROP COLUMN stu_age;


Delete from student
where rollno between 107 and 109;

ALTER TABLE student
CHANGE age stu_age INT;



ALTER TABLE student
MODIFY COLUMN age VARCHAR(2); 

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

INSERT INTO STUDENT
(rollno, name, marks, stu_age)
VALUES
(110,"Don", 99, 100);



Delete from customers;

select * from customers;

Delete from student
where rollno = 105;

Select * from student;

Update student
set marks = marks + 1;

Update student
set marks = 33, grade = "F"
Where rollno = 105;


Update student
set grade = "A"
where grade  = "O";

Select * from student;

set sql_safe_updates = 0;


Select city, count(city)
from student
where marks > 80
group by city
having city = "Islamabad"
;

Select city, count(rollno)
from student
Where marks > 90                   
group by city
;


Select grade, count(rollno)
from student
group by grade
order by grade
;

Select * FROM student
WHERE marks+10 > 100;

SELECT * FROM student where marks between 80 and 90;

SELECT * from student where city in ("Islamabad","Rawalpindi");

SELECT * FROM student where marks not between 80 and 90;

Select * from student limit 3;

Select * from student order by marks ASC;

Select *
from student 
order by marks DESC 
limit 3;

SELECT count(rollno)
from student;

Select city, avg(marks) as avg_marks
from student
group by city
order by avg_marks desc
;

create table dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);


INSERT into dept 
(id, name)
VALUES
(102, "IT")
;

Select * from dept;

Update dept
set name = "Department";

Delete from dept
where id = 102;

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher
(id, name, dept_id)
VALUES
(201, "Rohail", "102"),
(202, "Ayaan", "101"),
(203, "Haddiya", "101")
;

Select * from teacher;

TRUNCATE TABLE teacher;

Select * from customers;


