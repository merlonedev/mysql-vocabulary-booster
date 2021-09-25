select concat(e1.first_name, ' ', e1.last_name) as `Nome completo funcionário 1`,
e1.salary as `Salário funcionário 1`,
e1.phone_number as `Telefone funcionário 1`,
concat(e2.first_name, ' ', e2.last_name) as `Nome completo funcionário 2`,
e2.salary as `Salário funcionário 2`,
e2.phone_number as `Telefone funcionário 2`
from
hr.employees as e1,
hr.employees as e2
where e1.JOB_ID = e2.JOB_ID
and e1.EMPLOYEE_ID <> e2.EMPLOYEE_ID
order by concat(e1.first_name, ' ', e1.last_name) asc, concat(e2.first_name, ' ', e2.last_name) asc;
