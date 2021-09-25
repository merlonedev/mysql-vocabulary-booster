DROP PROCEDURE IF EXISTS hr.buscar_media_por_cargo;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(64))
BEGIN
SELECT 
    ROUND(AVG(SALARY), 2) 'Média salarial'
FROM
    hr.employees e
        JOIN
    hr.jobs j ON j.JOB_ID = e.JOB_ID
        AND j.JOB_TITLE = cargo
GROUP BY j.JOB_ID;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
