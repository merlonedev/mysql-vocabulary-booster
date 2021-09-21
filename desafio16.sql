CREATE DEFINER=`brunochib`@`localhost` FUNCTION `buscar_quantidade_de_empregos_por_funcionario`(email VARCHAR(50)) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE resultado INT;
    SELECT COUNT(*) FROM job_history as job_history INNER JOIN employees as employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
    WHERE employees.EMAIL = email
    INTO resultado;
	RETURN resultado;
END