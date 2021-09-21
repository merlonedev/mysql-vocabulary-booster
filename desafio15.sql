DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(100))
BEGIN
	SELECT 
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM
    hr.employees e
        INNER JOIN
    (SELECT 
        *
    FROM
        hr.jobs
    WHERE
        JOB_TITLE = job) j ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID;
END $$

DELIMITER ;
