DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(job_name VARCHAR(100))
BEGIN
SELECT
	ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM
	hr.employees e,
	hr.jobs j
WHERE j.JOB_TITLE = job_name
	AND e.JOB_ID = j.JOB_ID;
END $$

DELIMITER ;
