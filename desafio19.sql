USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT
COUNT(EMPLOYEE_ID)
FROM hr.employees
WHERE DATE_FORMAT(HIRE_DATE, '%m/%Y') LIKE CONCAT('%', mes,'/', ano) INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
