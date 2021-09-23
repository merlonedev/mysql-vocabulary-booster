DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT COUNT(*) AS total_empregos FROM hr.job_history AS h
WHERE EXISTS (
SELECT * FROM hr.employees AS e
WHERE e.EMAIL LIKE (email)
AND e.EMPLOYEE_ID = h.EMPLOYEE_ID
);
END $$
DELIMITER ;
