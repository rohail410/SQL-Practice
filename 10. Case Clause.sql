-- Case Statement

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN "Young"
    WHEN age BETWEEN 31 and 50 THEN "Old"
    WHEN age > 50 THEN "ON deaths door"
END AS Age_Bracket
FROM employee_demographics
;

-- Pay increase
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance =  10% bonus

Select first_name,
last_name,
salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
	WHEN salary > 50000 THEN salary * 1.07
    ELSE salary
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.1
    ELSE 0
END AS bonus
FROM employee_salary
;

SELECT * 
from parks_departments;

SELECT *
from employee_salary;



