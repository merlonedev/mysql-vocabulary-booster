select job.job_title as Cargo, round(avg(employee.salary), 2) as `Média salarial`,
case
when round(avg(employee.salary), 2) between 2000 and 5800 then 'Júnior'
when round(avg(employee.salary), 2) between 5801 and 7500 then 'Pleno'
when round(avg(employee.salary), 2) between 7501 and 10500 then 'Sênior'
when round(avg(employee.salary), 2) > 10500 then 'CEO'
end as Senioridade
from hr.jobs as job
inner join hr.employees as employee
on job.JOB_ID = employee.JOB_ID
group by employee.JOB_ID
order by avg(employee.salary);
