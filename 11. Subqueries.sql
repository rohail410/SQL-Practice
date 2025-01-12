-- Subqueries

SELECT * 
FROM employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
					FROM employee_salary
                    WHERE dept_id = 1)
;

SELECT * 
FROM employee_salary;

SELECT * 
FROM parks_departments;



Select first_name, salary, 
(Select AVG(salary) 
FROM employee_salary) AS avg_salary
FROM employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender;


Select AVG(max_age)
FROM
(SELECT gender, 
AVG(age) avg_age, 
MAX(age) max_age, 
MIN(age) min_age, 
COUNT(age) count_age
FROM employee_demographics
group by gender) AS agg_table
;











