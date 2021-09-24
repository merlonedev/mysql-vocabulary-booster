DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) AS total_empregos FROM hr.job_history AS h
WHERE EXISTS (
SELECT * FROM hr.employees AS e
WHERE e.EMAIL LIKE (email)
AND e.EMPLOYEE_ID = h.EMPLOYEE_ID
)
INTO total;
RETURN total;
END $$
DELIMITER ;
