-- Triggers

Select *
FROM employee_demographics;

Select * 
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER $$

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, 
salary, dept_id)
values (13, "Rohail", "Tabassum", "Data Analyst", "70000", NULL);




