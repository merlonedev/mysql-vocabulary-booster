DELIMITER $$

CREATE FUNCTION
    buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(80))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobsons INT;
    SELECT COUNT(*) AS total_empregos
    FROM     
        hr.job_history
            INNER JOIN
        hr.employees AS e ON e.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
    WHERE e.EMAIL = email INTO jobsons;
    RETURN jobsons;
END
$$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
-- drop function if exists buscar_quantidade_de_empregos_por_funcionario;