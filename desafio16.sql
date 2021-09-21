DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(userEmail VARCHAR(45))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qntd INT;
    SELECT 
    COUNT(j.EMPLOYEE_ID)
FROM
    employees e
        INNER JOIN
    job_history j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    EMAIL = userEmail
    INTO qntd;
    RETURN qntd;
END $$

DELIMITER ;
