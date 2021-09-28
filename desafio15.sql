DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(15)) 
BEGIN 
SELECT 
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`
FROM
    hr.employees AS E
        JOIN
    hr.jobs J ON E.JOB_ID = J.JOB_ID
WHERE
    J.JOB_TITLE = jobTitle;
END $$ 
DELIMITER ; 
