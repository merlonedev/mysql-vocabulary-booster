DELIMITER $$

CREATE FUNCTION
    buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(80))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobsons INT;
    SELECT COUNT(*) AS total_empregos
    FROM     
        hr.jobs_history AS h
            INNER JOIN
        hr.employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
    WHERE e.EMAIL = email INTO jobsons;
    RETURN jobsons;
END;
$$

DELIMITER ;
