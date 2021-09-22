DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargoNome VARCHAR(100))
BEGIN
SELECT
	ROUND(AVG(e.salary), 2) 'Média Salarial'
FROM
	hr.jobs j
		INNER JOIN
	hr.employees e ON e.JOB_ID = j.JOB_ID
WHERE
	j.JOB_TITLE = cargoNome;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
