USE hr;
SELECT JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM jobs
ORDER BY 'Diferença entre salários máximo e mínimo' ASC, JOB_TITLE;
