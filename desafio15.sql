DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS 'Médai salarial'
    FROM employees e
    JOIN jobs j ON j.JOB_ID = e.JOB_ID
    WHERE j.JOB_TITLE = cargo;
END $$

DELIMITER ;