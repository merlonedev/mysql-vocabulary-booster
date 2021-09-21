USE hr;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (employee_email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE jobs_quantity INT;
    SELECT COUNT(jh.job_id) FROM hr.job_history jh
    WHERE jh.employee_id IN (
		SELECT e.employee_id FROM hr.employees e
        WHERE e.email = employee_email)
        INTO jobs_quantity;
        RETURN jobs_quantity;
END $$
DELIMITER ;
