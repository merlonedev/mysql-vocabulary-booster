SELECT 
    JOB_TITLE AS Cargo,
    MAX_SALARY - MIN_SALARY AS 'Diferença entre salários máximos e mínimo'
FROM
    hr.jobs
ORDER BY 'Diferença entre salários máximos e mínimo', Cargo;