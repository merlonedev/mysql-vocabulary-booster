USE hr;

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hire_month INT, hire_year INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE qty_emp INT;
SELECT 
    COUNT(*)
FROM
    hr.employees emp
WHERE
    MONTH(emp.HIRE_DATE) = hire_month
        AND YEAR(emp.HIRE_DATE) = hire_year INTO qty_emp;
RETURN qty_emp;
END $$

DELIMITER ;
