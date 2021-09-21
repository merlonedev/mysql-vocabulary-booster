USE hr; 
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes_inicio INT, ano_inicio INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE QTD_TOTAL INT;
SELECT 
    COUNT(HIRE_DATE)
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) = mes_inicio
        AND YEAR(HIRE_DATE) = ano_inicio INTO QTD_TOTAL;
RETURN QTD_TOTAL;
END $$

DELIMITER ;
