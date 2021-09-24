USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE nJobs INT;
SELECT 
    COUNT(*)
FROM
    job_history AS job_history
        INNER JOIN
    employees AS employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
        AND employees.EMAIL = email INTO nJobs;
        RETURN nJobs;
END $$
DELIMITER ;
