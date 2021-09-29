DELIMITER $$

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA

BEGIN
    DECLARE total_de_funcionarios INT;
    
    SELECT
        COUNT(*)
    FROM
        hr.employees
    WHERE
        MONTH(HIRE_DATE) = mes
        AND YEAR(HIRE_DATE) = ano
    INTO
        total_de_funcionarios;

    RETURN total_de_funcionarios;    
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
