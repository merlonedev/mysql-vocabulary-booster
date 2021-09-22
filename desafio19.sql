USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(inMonth INT, inYear INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hireQty INT;
SELECT COUNT(*) FROM `employees` WHERE MONTH(HIRE_DATE) = inMonth AND YEAR(HIRE_DATE) = inYear INTO hireQty;
RETURN hireQty;
END $$
DELIMITER ;
