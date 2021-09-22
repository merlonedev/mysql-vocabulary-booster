SELECT 
    JOB_TITLE AS 'Cargo',
	MAX_SALARY - MIN_SALARY as 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, `Cargo`;
