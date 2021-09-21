DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo NVARCHAR(100))
BEGIN
SELECT
ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM 
employees e
INNER JOIN jobs j ON e.JOB_ID = j.JOB_ID
WHERE JOB_TITLE = cargo;
END $$

DELIMITER ;