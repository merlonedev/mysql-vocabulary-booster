DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM employees AS e
INNER JOIN jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = Cargo;
END $$
DELIMITER ;
