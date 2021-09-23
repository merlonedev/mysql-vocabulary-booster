-- Esse Código foi baseado no código do colega MATHEUS TKACZYK RIBEIRO, turma 12
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial` FROM hr.employees AS e
WHERE EXISTS (
SELECT * FROM hr.jobs AS j
WHERE j.JOB_TITLE LIKE (cargo)
AND e.JOB_ID = j.JOB_ID
);
END $$
DELIMITER ;
