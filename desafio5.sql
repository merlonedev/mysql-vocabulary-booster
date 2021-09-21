SELECT JOB_TITLE AS "Cargo",            
(MAX_SALARY - MIN_SALARY)AS "Variação Salarial",
ROUND(avg(MIN_SALARY)/12,2) AS "Média mínima mensal",
ROUND(avg(MAX_SALARY)/12,2) AS "Média máxima mensal" 
FROM hr.jobs
GROUP BY JOB_ID -- Sempre que pede média é bom fazer o group by
ORDER BY (MAX_SALARY - MIN_SALARY) ASC, JOB_TITLE ASC; 

-- o req. pede média mensal, então faz o avg() e divide por 12. 
