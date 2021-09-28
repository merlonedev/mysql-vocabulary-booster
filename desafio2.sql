select JOB_TITLE as 'Cargo',
	case
		when MAX_SALARY between 5000 and 10000 then 'Baixo'
        when MAX_SALARY between 10001 and 20000 then 'Médio'
        when MAX_SALARY between 20001 and 30000 then 'Alto'
        when MAX_SALARY > 30000 then 'Altíssimo'
	end as 'Nível'
from hr.jobs
order by JOB_TITLE asc;
