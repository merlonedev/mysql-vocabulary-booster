SELECT 
    hr.jobs.JOB_TITLE AS 'Cargo',
    (hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY (hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY) , hr.jobs.JOB_TITLE;
