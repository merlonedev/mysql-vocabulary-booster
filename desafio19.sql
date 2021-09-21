drop function if exists exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS int READS SQL DATA
BEGIN
    declare total_contratados int;
SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) = mes
        AND YEAR(HIRE_DATE) = ano INTO total_contratados;
    RETURN total_contratados;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS total;
