DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (userEmail VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE emailcount INT;
SELECT COUNT(jh.EMPLOYEE_ID) FROM hr.employees AS e JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE EMAIL = userEmail
INTO emailcount;
RETURN emailcount;
END $$ ;

DELIMITER ;
