USE hr;
DELIMITER $$ 

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_quantity INT;
    SELECT COUNT(*)
FROM job_history AS jh
JOIN employees AS e ON jh.employee_id = e.employee_id
WHERE e.email = email INTO jobs_quantity;
    RETURN jobs_quantity;
END $$

DELIMITER ;

-- SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
