USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE email_amount INT;
SELECT 
    COUNT(H.employee_id) AS total_empregos
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS H ON E.employee_id = H.employee_id
WHERE
    E.email = email INTO email_amount;
    RETURN email_amount;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
