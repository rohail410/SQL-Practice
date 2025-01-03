# Group By

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender 
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

# Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'parks_and_recreation.employee_demographics.first_name' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by


SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

## Order By

SELECT *
FROM employee_demographics
ORDER BY 5, 4
;



