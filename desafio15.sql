DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(15))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM employees AS e
INNER JOIN jobs as j
ON e.JOB_id = j.JOB_ID
WHERE j.JOB_TITLE LIKE CONCAT('%', cargo, '%');
END $$

DELIMITER ;
