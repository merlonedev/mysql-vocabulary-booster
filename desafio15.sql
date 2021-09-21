USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(100))
BEGIN
	SELECT 
		ROUND(AVG(e.salary), 2) AS `Média salarial`
	FROM
		hr.employees AS e
	WHERE
		e.job_id = (SELECT 
				j.job_id
			FROM
				hr.jobs AS j
			WHERE
				j.job_title = job)
	GROUP BY job_id;
END $$

DELIMITER ;
