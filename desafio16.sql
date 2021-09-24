USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(10))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE empregos_total INT;
    SELECT COUNT(*)
    FROM hr.job_history AS JH INNER JOIN hr.employees AS E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
    WHERE E.EMAIL = email into empregos_total;
	RETURN empregos_total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
