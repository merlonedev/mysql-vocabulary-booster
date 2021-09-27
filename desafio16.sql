DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity_jobs INT;
SELECT
COUNT(job_history.EMPLOYEE_ID)
FROM
job_history INNER JOIN employees ON
employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE
employees.EMAIL = email INTO quantity_jobs;
RETURN quantity_jobs;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
