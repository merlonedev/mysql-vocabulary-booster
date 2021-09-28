select JOB_TITLE as 'Cargo', MAX_SALARY - MIN_SALARY as 'Diferença entre salários máximo e mínimo' from hr.jobs
order by (MAX_SALARY - MIN_SALARY) asc, JOB_TITLE asc;
