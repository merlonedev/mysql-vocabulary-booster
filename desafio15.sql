DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
FROM hr.employees emp
INNER JOIN hr.jobs job
ON job.JOB_ID = emp.JOB_ID
WHERE job.JOB_TITLE = cargo;
END $$

DELIMITER ;
