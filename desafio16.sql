DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (input_email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE response INT;
SELECT 
    COUNT(JH.JOB_ID)
FROM
    hr.job_history AS JH
        INNER JOIN
    hr.employees AS EM ON EM.EMAIL = input_email
WHERE
    EM.EMPLOYEE_ID = JH.EMPLOYEE_ID INTO response;
RETURN response;
END $$

DELIMITER ;
