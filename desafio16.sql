DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE result INT;
	SELECT
    COUNT(j.JOB_ID)
FROM
    job_history AS j
        INNER JOIN
    employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    e.EMAIL LIKE CONCAT('%', email, '%') INTO result;
RETURN result;
END $$
DELIMITER ;
