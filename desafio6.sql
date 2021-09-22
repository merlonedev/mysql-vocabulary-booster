SELECT CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) as "Nome completo", 
j.JOB_TITLE as "Cargo", 
y.START_DATE as "Data de início do cargo", 
d.DEPARTMENT_NAME as "Departamento"
FROM hr.jobs j inner join hr.job_history y on  j.JOB_ID = y.JOB_ID 
inner join hr.employees e on e.EMPLOYEE_ID = y.EMPLOYEE_ID -- Podia ser DEPARTMENT_ID ou JOB_ID, mas só deu certo com DEPARTMENT_ID
inner join hr.departments d  on d.DEPARTMENT_ID = y.DEPARTMENT_ID  -- Tem DEPARTMENT_ID na EMPLOYEES também, mas não dava certo. O DEPARTMENT_ID em job_history faz mais sentido pra essa correlação, porque envolve CARGOS. Employees envolve pessoas.
ORDER BY concat(e.FIRST_NAME, " ", e.LAST_NAME) DESC, `Cargo` ASC;

-- Comecei os inner joins por jobs e job_history porque o README pede relatório de histórico de cargos.
-- então acho que faz sentido começar com essas duas tabelas a ordem dos inner joins.
