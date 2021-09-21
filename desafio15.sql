USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20))
BEGIN
	SELECT 
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM
    employees AS e
        JOIN
    jobs AS j ON j.JOB_TITLE = cargo
WHERE
    e.JOB_ID = j.JOB_ID;
END $$
DELIMITER ;
