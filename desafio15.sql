DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
SELECT
ROUND(AVG(employees.SALARY), 2) AS `Média salarial`
FROM 
employees INNER JOIN jobs ON
employees.JOB_ID = jobs.JOB_ID
WHERE 
jobs.JOB_TITLE = job;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('programmer');
