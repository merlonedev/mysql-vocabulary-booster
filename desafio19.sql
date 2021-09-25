DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(_month INT, _year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT 
COUNT(*)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = _month AND YEAR(HIRE_DATE) = _year
INTO result;
RETURN result;
END $$

DELIMITER ;
