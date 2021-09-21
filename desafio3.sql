SELECT 
    job_title AS 'Cargo',
    (max_salary - min_salary) as `Diferença entre salários máximo e mínimo`
FROM
    jobs
    order by `Diferença entre salários máximo e mínimo`, job_title;