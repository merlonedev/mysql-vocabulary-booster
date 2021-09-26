-- Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar
-- a média salarial de todas as pessoas que possuem esse cargo;
USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial` FROM employees
WHERE JOB_ID IN (SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE = cargo);
END $$

DELIMITER ;
