DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes VARCHAR(2), ano VARCHAR(4))
RETURNS INT READS SQL DATA
BEGIN
DECLARE people_quantity INT;
SELECT
COUNT(HIRE_DATE)
FROM
employees
WHERE
MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano into people_quantity;
RETURN people_quantity;
END $$
DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
