DELIMITER $$

DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_do_funcionario VARCHAR(100))
RETURNS INT READS SQL DATA

BEGIN
	DECLARE total_de_empregos INT;
	SELECT 
		COUNT(*)
	FROM
		hr.job_history AS jh
	WHERE
		jh.EMPLOYEE_ID IN (SELECT 
				e.EMPLOYEE_ID
			FROM
				hr.employees AS e
			WHERE
				e.EMAIL = email_do_funcionario) INTO total_de_empregos;
	RETURN total_de_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
