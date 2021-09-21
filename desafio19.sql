USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(inserted_month INT, inserted_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_employees_in_period INT;
SELECT 
COUNT(*)
FROM
hr.employees
WHERE
MONTH(hire_date) = 6
AND YEAR(hire_date) = 1987 INTO count_employees_in_period;
RETURN count_employees_in_period;
END $$

DELIMITER ;
