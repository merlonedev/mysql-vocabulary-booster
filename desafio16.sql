USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_func VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos_totais INT;
SELECT COUNT(EMPLOYEE_ID) FROM hr.job_history
WHERE EMPLOYEE_ID = (
SELECT EMPLOYEE_ID FROM hr.employees
WHERE EMAIL = email_func)
INTO empregos_totais;
RETURN empregos_totais;
END$$

DELIMITER ;
