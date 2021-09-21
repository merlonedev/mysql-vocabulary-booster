USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN average varchar(50))
BEGIN
SELECT
	ROUND(AVG (e.salary), 2) as `Média salarial`
    from hr.employees as e
    join
		hr.jobs as j on e.JOB_ID = j.JOB_ID
	where j.JOB_TITLE = 'Programmer';
END $$

DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
