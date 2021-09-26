DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano BIGINT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qty_contractors INT;
SELECT 
    COUNT(*)
FROM
    employees
WHERE
    HIRE_DATE LIKE (CONCAT(ano,
            '-',
            IF(mes < 10, CONCAT(0, mes), mes),
            '%')) INTO qty_contractors;
RETURN qty_contractors;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
