select ucase(concat(first_name, ' ', last_name)) as `Nome completo`,
jh.START_DATE as `Data de início`,
e.SALARY as `Salário`
from hr.employees as e
inner join hr.job_history as jh
on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
where jh.START_DATE like '%01___'
or jh.START_DATE like '%02___'
or jh.START_DATE like '%03___'
order by `Nome completo` ASC, `Data de início` ASC;
