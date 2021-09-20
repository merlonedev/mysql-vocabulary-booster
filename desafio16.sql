USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_func VARCHAR(15))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_empregos INT;
SELECT COUNT(*)
FROM job_history jh
JOIN employees e 
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email_func
INTO qtd_empregos;
    RETURN qtd_empregos;
END $$

DELIMITER ;
