USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
IN cargo VARCHAR(200)
)
BEGIN
SELECT 
ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM
employees AS employees
INNER JOIN
jobs AS jobs ON jobs.JOB_ID = employees.JOB_ID
AND jobs.JOB_TITLE = cargo;
END $$
DELIMITER ;
