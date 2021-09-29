DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
    SELECT ROUND(AVG(E.salary), 2) as 'Média salarial'
    FROM hr.employees as E
    join hr.jobs as J
    on J.JOB_ID = E.JOB_ID
    WHERE J.JOB_TITLE LIKE cargo;
END $$

DELIMITER ;
