SELECT JOB_TITLE as "Cargo", CASE -- case é a lógica pra segunda coluna
WHEN
MAX_SALARY >= 5000 AND MAX_SALARY <= 10000 THEN "Baixo"
WHEN
MAX_SALARY > 10000 AND MAX_SALARY <= 20000 THEN "Médio"
WHEN
MAX_SALARY > 20000 AND MAX_SALARY <= 30000 THEN "Alto"
ELSE "Altíssimo"
END AS "Nível" -- nome da segunda coluna
FROM hr.jobs
ORDER BY JOB_TITLE;
-- O req  2(assim como o 1) não precisam usar inner join porque a tabela jobs já tem ĩnformações suficientes.
