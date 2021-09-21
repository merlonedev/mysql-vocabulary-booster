DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
	SELECT 
    ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
	FROM
    hr.employees emp
	WHERE
    emp.JOB_ID IN (SELECT 
            job.JOB_ID
        FROM
            hr.jobs job
        WHERE
            job.JOB_TITLE = cargo);
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');