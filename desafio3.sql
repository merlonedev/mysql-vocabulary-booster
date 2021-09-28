SELECT 
    JOB_TITLE AS 'Cargo',
    MAX_SALARY - MIN_SALARY AS 'Diferença entra salários máximo e mínimo'
FROM
    hr.jobs;
