USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50)) 
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobCount INT;
SELECT
count(jh.job_id) 
  FROM hr.job_history AS jh
    WHERE
jh.employee_id = (
    SELECT
      e.employee_id
    FROM
      hr.employees as e
    WHERE
      e.email = email
    ) INTO jobCount;
        RETURN jobCount;
END $$

DELIMITER ;
