USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes VARCHAR(2), ano VARCHAR(4))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_hire INT;
SELECT 
COUNT(*)
FROM
employees
WHERE
MONTH(HIRE_DATE) = mes
AND YEAR(HIRE_DATE) = ano
INTO total_hire;
RETURN total_hire;
END $$
DELIMITER;
