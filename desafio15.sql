USE hr; 
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
	SELECT 
        ROUND(AVG(e.SALARY), 2) AS `Média salarial` INTO cargo
    FROM
        hr.employees AS e
	        JOIN
	    hr.jobs AS j
    WHERE
        (e.JOB_ID = j.JOB_ID) AND (j.JOB_TITLE = cargo);
END $$

DELIMITER ;
