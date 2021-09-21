SELECT 
    hr.jobs.JOB_TITLE AS 'Cargo',
    CASE
        WHEN
            hr.jobs.MAX_SALARY >= 5000
                AND hr.jobs.MAX_SALARY <= 10000
        THEN
            'Baixo'
        WHEN
            hr.jobs.MAX_SALARY >= 10001
                AND hr.jobs.MAX_SALARY <= 20000
        THEN
            'Médio'
        WHEN
            hr.jobs.MAX_SALARY >= 20001
                AND hr.jobs.MAX_SALARY <= 30000
        THEN
            'Alto'
        WHEN hr.jobs.MAX_SALARY > 30000 THEN 'Altíssimo'
    END AS 'Nível'
FROM
    hr.jobs
ORDER BY hr.jobs.JOB_TITLE;
