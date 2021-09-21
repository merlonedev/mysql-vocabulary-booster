USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(_month INT, _year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE numberOfEmployeesHired INT;
SELECT 
	COUNT(*)
FROM
	hr.employees
WHERE
	MONTH(hire_date) = 6
		AND YEAR(hire_date) = 1987 INTO numberOfEmployeesHired;
RETURN numberOfEmployeesHired;
END $$

DELIMITER ;
