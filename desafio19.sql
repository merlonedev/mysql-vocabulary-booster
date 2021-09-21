DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes VARCHAR(2), ano VARCHAR(4))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qntd INT;
SELECT 
    COUNT(*)
FROM
    employees
WHERE
    HIRE_DATE LIKE CONCAT(ano, '%')
        AND HIRE_DATE LIKE CONCAT('%', mes, '___') INTO qntd;
    RETURN qntd;
END $$

DELIMITER ;
