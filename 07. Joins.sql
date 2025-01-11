-- Join

SELECT *
FROM employee_demographics;

SELECT * 
FROM employee_salary;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
;

-- Outer Joins

SELECT *
FROM employee_demographics AS dem
RIGHT OUTER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
;

-- SELF Join

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS emp_santa,
emp1.last_name AS emp_santa,
emp2.employee_id AS emp_id,
emp2.first_name AS emp_firstname,
emp2.last_name AS emp_lastname
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

SELECT * 
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables

SELECT * 
FROM employee_demographics
;

SELECT * 
FROM employee_salary
;

SELECT * 
FROM parks_departments
;

SELECT dem.employee_id, dem.first_name, dem.last_name, age, salary, department_name
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments dep
	ON sal.dept_id = dep.department_id
;
	











