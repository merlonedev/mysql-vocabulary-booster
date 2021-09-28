USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_name VARCHAR(30))
BEGIN
	SELECT
		ROUND(AVG(emp.SALARY), 2) AS `Média salarial`
	FROM
		hr.employees AS emp
	INNER JOIN
		hr.jobs AS jb ON jb.JOB_ID = emp.JOB_ID
        WHERE jb.JOB_TITLE = job_name;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
