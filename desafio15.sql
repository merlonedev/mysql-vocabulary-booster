DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30))
BEGIN
SELECT sub.Media AS 'Média salarial'
FROM (SELECT j.JOB_TITLE, ROUND(AVG(e.SALARY), 2) AS 'Media' FROM hr.employees AS e
	INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
	GROUP BY j.JOB_TITLE) AS sub
	WHERE sub.JOB_TITLE LIKE CONCAT('%',cargo,'%');
END
$$
DELIMITER ;
