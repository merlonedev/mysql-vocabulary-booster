USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_count INT;
SELECT 
	COUNT(j.job_id)
FROM
	hr.job_history AS j
WHERE
	j.employee_id = (SELECT 
			e.employee_id
		FROM
			hr.employees AS e
		WHERE
			e.email = email) INTO job_count;
RETURN job_count;
END $$

DELIMITER ;
