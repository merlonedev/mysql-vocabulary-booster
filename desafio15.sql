DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(200))
BEGIN
SELECT 
    ROUND(AVG(employees.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS employees
    JOIN hr.jobs AS jobs
    ON jobs.JOB_TITLE = cargo
    WHERE jobs.JOB_ID = employees.JOB_ID;
END $$

DELIMITER ;
