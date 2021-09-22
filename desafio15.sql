USE hr;
DELIMITER $$

CREATE procedure buscar_media_por_cargo(IN cargo VARCHAR(180)) -- cargo foi nome opcional. Varchar é pelo parâmetro ser algum texto.
BEGIN
SELECT ROUND(AVG(e.SALARY),2) AS "Média salarial" -- nem todo salário do programador vai ser o mesmo na tabela. Varia de valor. o avg fará a média desses valores.
FROM hr.jobs j INNER JOIN hr.employees e ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = cargo; -- job_title tem que ser igual ao cargo digitado no parâmetro na chamada dessa procedure em outro arquivo.
END $$
DELIMITER ;
