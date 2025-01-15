-- CTEs Common Table Expressions

WITH CTE_Example (GENDER, AVG_SAL, MAX_SAL, MIN_SAL, COUNT_SAL) AS 
(
Select gender, AVG(salary) avg_sal, MAX(salary) avg_max, MIN(salary) avg_min, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

SELECT AVG(avg_sal)
FROM CTE_Example;

Select AVG(avg_sal)
FROM 
(
Select gender, AVG(salary) avg_sal, MAX(salary) avg_max, MIN(salary) avg_min, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) AS temp_table
;


WITH CTE_Example AS 
(
Select employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > "1985-01-01"
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
Select * 
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;









