USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN jobTitle VARCHAR(50), OUT jobTitleSalaryAverage SMALLINT)
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM
employees AS e
JOIN jobs j
ON e.JOB_ID = j.JOB_ID AND j.JOB_TITLE = jobTitle
GROUP BY j.JOB_TITLE;
END $$

DELIMITER ;
