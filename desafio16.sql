DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(mail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(h.EMPLOYEE_ID) FROM job_history AS h
INNER JOIN employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE mail = e.EMAIL INTO total_empregos;
RETURN total_empregos;
END $$
DELIMITER ;
