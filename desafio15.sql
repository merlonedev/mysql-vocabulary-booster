DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
	SELECT
		ROUND(AVG(SALARY), 2) AS 'Média salarial'
	FROM
		employees AS e
	WHERE
		EXISTS ( SELECT
			*
		FROM jobs
		WHERE e.JOB_ID = JOB_ID
			AND JOB_TITLE = job);
END $$

DELIMITER ;
