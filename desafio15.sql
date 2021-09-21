DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial` FROM hr.employees AS emp
WHERE EXISTS (
SELECT * FROM hr.jobs AS jb
    WHERE jb.JOB_TITLE = cargo AND emp.JOB_ID = jb.JOB_ID
);
END $$

DELIMITER ;
