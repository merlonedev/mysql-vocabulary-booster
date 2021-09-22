DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo( IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG (e.SALARY), 2) AS 'Média Salarial'
FROM hr.employees e 
INNER JOIN hr.jobs j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo
GROUP BY j.JOB_TITLEE;
END $$

DELIMITER;

CALL buscar_media_por_cargo('Programmer');
