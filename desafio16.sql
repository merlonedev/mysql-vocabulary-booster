DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_jobs INT;
SELECT COUNT(jh.EMPLOYEE_ID) FROM job_history AS jh
INNER JOIN employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email INTO qtd_jobs;
RETURN qtd_jobs;
END $$

DELIMITER ;
