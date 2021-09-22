SELECT UPPER(CONCAT(e.FIRST_NAME, " ", e.LAST_NAME))  AS "Nome completo",
j.START_DATE AS "Data de início", 
e.SALARY "Salário"
FROM hr.employees e INNER JOIN hr.job_history j on e.EMPLOYEE_ID = j.EMPLOYEE_ID -- deu certo com employee_id
WHERE MONTH(j.START_DATE) BETWEEN 1 AND 3
ORDER BY upper(concat(e.FIRST_NAME, " ", e.LAST_NAME)) ASC, j.START_DATE ASC;

-- só usa as tabelas employees e job_history. Já trazem as informações necessárias do que o req 7 pede.
--  Não Deu certo com job_id, só com employee_id. O requisito pede NOME dos empregados, então tem sentido.
