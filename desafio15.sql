DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
    SELECT 
    ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM
    employees
        INNER JOIN
    jobs ON jobs.JOB_ID = employees.JOB_ID
WHERE
    jobs.JOB_TITLE = cargo;
END $$

DELIMITER ;
