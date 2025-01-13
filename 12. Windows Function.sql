-- Window Function

Select dem.first_name, dem.last_name,gender,  AVG(salary) as avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name, dem.last_name,gender
;

Select dem.first_name, dem.last_name, gender, salary,  AVG(salary) OVER(partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

Select dem.first_name, dem.last_name, gender, salary, 
SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) as Rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;



Select dem.employee_id, dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER(partition by gender ORDER BY salary DESC) as row_no,
RANK() OVER(partition by gender ORDER BY salary DESC) as rank_num,
DENSE_RANK() OVER(partition by gender ORDER BY salary DESC) as dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;















