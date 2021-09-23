DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE id INT;
    
  SELECT COUNT(*)
  FROM hr.job_history
  WHERE EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM hr.employees WHERE EMAIL = employeeEmail)
  INTO id;
  RETURN id;
END $$

DELIMITER ;
