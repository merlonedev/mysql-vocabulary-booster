SELECT JOB_TITLE AS 'Cargo', (MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo' from hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo` ASC, JOB_TITLE;
