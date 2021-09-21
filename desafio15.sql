USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobtitle VARCHAR(50))
BEGIN
	SELECT 
		JOB_TITLE, ROUND(AVG(SALARY), 2)
	FROM
		employees AS e
			INNER JOIN
		jobs AS j ON e.JOB_ID = j.JOB_ID
        WHERE JOB_TITLE = jobtitle;
END $$

DELIMITER ;
