DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailInput VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN

    DECLARE empregadoID varchar(50);
    DECLARE qtdEmpregos INT;
    
SELECT 
    EMPLOYEE_ID
INTO empregadoID FROM
    hr.employees
WHERE
    EMAIL = emailInput;
    
SELECT 
    COUNT(*)
INTO 
    qtdEmpregos
FROM
    hr.job_history
WHERE
    empregadoID = EMPLOYEE_ID;
    
    RETURN qtdEmpregos;
END $$

DELIMITER ;
