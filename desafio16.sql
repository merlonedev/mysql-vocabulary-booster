USE hr; 
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(500))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE emploHistory INT;
SELECT 
    COUNT(e.EMAIL)
FROM
    employees AS e
        JOIN
    job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    e.EMAIL = email INTO emploHistory;
RETURN emploHistory;
END $$

DELIMITER ;
