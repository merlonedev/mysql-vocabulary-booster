DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mesInput INT , anoInput INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qtdEmpregados INT;
SELECT 
    COUNT(*)
INTO qtdEmpregados FROM
    hr.employees
WHERE
    MONTH(hr.employees.HIRE_DATE) = mesInput
        AND YEAR(hr.employees.HIRE_DATE) = anoInput;

    RETURN qtdEmpregados;
END $$

DELIMITER ;
