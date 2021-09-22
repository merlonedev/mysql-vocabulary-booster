DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hirings_total INT;
SELECT COUNT(*)
FROM hr.employees
WHERE MONTH(hire_date) = mes AND YEAR(hire_date) = ano
INTO hirings_total;
RETURN hirings_total;
END $$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS total;
