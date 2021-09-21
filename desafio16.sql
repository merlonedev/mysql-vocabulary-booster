USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE jobs_quantity INT;
    SELECT COUNT(jh.EMPLOYEE_ID)
	FROM hr.job_history AS jh
	INNER JOIN hr.employees AS e
	ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND e.EMAIL LIKE email
	GROUP BY e.EMPLOYEE_ID INTO jobs_quantity;
    RETURN jobs_quantity;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
