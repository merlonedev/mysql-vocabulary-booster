USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
    COUNT(j.JOB_ID)
FROM
    job_history AS j
        JOIN
    employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    e.EMAIL = email INTO total;
RETURN total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
