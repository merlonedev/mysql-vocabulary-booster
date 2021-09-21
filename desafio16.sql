USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(inputed_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT 
COUNT(j.job_id)
FROM
hr.job_history AS j
WHERE
j.employee_id = (SELECT 
e.employee_id
FROM
hr.employees AS e
WHERE
e.email = inputed_email) INTO total_jobs;
RETURN total_jobs;
END $$

DELIMITER ;
