DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT
COUNT(*)
FROM hr.job_history JH
JOIN hr.employees E
ON E.EMAIL LIKE email
WHERE JH.EMPLOYEE_ID = E.EMPLOYEE_ID INTO total;
RETURN total;
END $$
DELIMITER ;
