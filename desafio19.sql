DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT 
    COUNT(e.EMPLOYEE_ID)
FROM
    hr.employees e
WHERE
    MONTH(e.HIRE_DATE) = mes
        AND YEAR(e.HIRE_DATE) = ano INTO result;
RETURN result;
END $$

DELIMITER ;
