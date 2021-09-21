drop procedure if exists buscar_media_por_cargo;

USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(in cargo varchar(50))
BEGIN
SELECT 
    (SELECT 
            ROUND(AVG(SALARY), 2)
        FROM
            hr.employees
        WHERE
            JOB_ID = j.JOB_ID) AS 'Média salarial'
FROM
    hr.jobs AS j
where JOB_TITLE = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
