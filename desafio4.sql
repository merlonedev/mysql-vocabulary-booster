select JOB_ID as 'Cargo', round(avg(salary), 2) as 'Média salarial',
	case
		when round(avg(salary), 2) between 2000 and 5800 then 'Júnior'
        when round(avg(salary), 2) between 5801 and 7500 then 'Pleno'
        when round(avg(salary), 2) between 7501 and 10500 then 'Sênior'
        when round(avg(salary), 2) > 10500 then 'CEO'
	end as 'Senioridade'
from hr.employees
group by JOB_ID
order by round(avg(salary), 2) asc, JOB_ID asc;
