SELECT 
    JOB_TITLE 'Cargo',
    (MAX_SALARY - MIN_SALARY ) 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs hrj
ORDER BY (MAX_SALARY - MIN_SALARY) , hrj.JOB_TITLE;
