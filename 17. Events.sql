-- Events

Select *
FROM employee_demographics;

DELIMITER $$
CREATE EVENT delete_retirees2
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
    FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;



