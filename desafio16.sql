USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(empEmail VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
DECLARE empID INT;
SELECT EMPLOYEE_ID FROM `employees` WHERE EMAIL LIKE empEmail INTO empID;
SELECT COUNT(*) FROM `job_history` WHERE EMPLOYEE_ID = empID INTO total_empregos;    
RETURN total_empregos;
END $$
DELIMITER ;

-- DROP FUNCTION buscar_quantidade_de_empregos_por_funcionario;

-- SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
