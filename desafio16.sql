DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_de_empregos INT;
SELECT 
    COUNT(t1.EMPLOYEE_ID)
FROM
    hr.job_history AS t1
    INNER JOIN hr.employees AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE
    t2.EMAIL LIKE CONCAT('%', employee_email, '%') INTO quantidade_de_empregos;
    RETURN quantidade_de_empregos;
END $$

DELIMITER ;
