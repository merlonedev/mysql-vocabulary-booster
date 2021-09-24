select concat(e.first_name, ' ', e.last_name) as `Nome completo`,
j.job_title as Cargo,
jh.start_date as `Data de início do cargo`,
d.department_name as Departamento
from hr.employees as e
inner join hr.job_history as jh
on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
inner join hr.jobs as j
on jh.JOB_ID = j.JOB_ID
inner join hr.departments as d
on jh.DEPARTMENT_ID = d.DEPARTMENT_ID
order by `Nome completo` DESC, Cargo;
