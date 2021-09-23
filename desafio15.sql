-- 15 - Crie uma procedure chamada `buscar_media_por_cargo` que  
-- recebe como parâmetro o nome de um cargo e em retorno deve mostrar 
-- a média salarial de todas as pessoas que possuem esse cargo

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
