-- Stored Procedure

Select *
FROM employee_salary
WHERE salary >= 50000
; 



CREATE PROCEDURE large_salaries()
Select *
FROM employee_salary
WHERE salary >= 50000
; 

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries6()
BEGIN
	Select *
	FROM employee_salary
	WHERE salary >= 50000
	;	 
	Select *
    FROM employee_salary
	WHERE salary >= 10000
	; 
END $$
DELIMITER ;

Call large_salaries3();

DELIMITER $$
CREATE PROCEDURE large_salaries5(p_employee_id INT)
BEGIN
	Select salary
	FROM employee_salary
	WHERE employee_id = p_employee_id
    ;
END $$
DELIMITER ;

Call large_salaries4(1)











