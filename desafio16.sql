DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_total int;
SELECT COUNT(*)
FROM hr.job_history as j
JOIN hr.employees as e ON j.employee_id = e.employee_id
WHERE e.email = email
INTO jobs_total;
RETURN jobs_total;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS total_empregos;
