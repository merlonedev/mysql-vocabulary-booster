USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_de_uma_pessoa_funcionaria VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos_por_funcionario INT;
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND e.EMAIL = email_de_uma_pessoa_funcionaria
INTO quantidade_de_empregos_por_funcionario ;
RETURN quantidade_de_empregos_por_funcionario;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
