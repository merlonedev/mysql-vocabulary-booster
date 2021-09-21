select 
	concat(emp.FIRST_NAME, ' ', emp.LAST_NAME) as `Nome completo`,
  concat( if( day(jh.START_DATE) between 1 and 9, concat(0,day(jh.START_DATE)), day(jh.START_DATE)) , '/', if( month(jh.START_DATE) between 1 and 9, concat(0,month(jh.START_DATE)), month(jh.START_DATE)) , '/', year(jh.START_DATE)) as 'Data de início',
  concat( if( day(jh.END_DATE) between 1 and 9, concat(0,day(jh.END_DATE)), day(jh.END_DATE)), '/', if( month(jh.END_DATE) between 1 and 9, concat(0,month(jh.END_DATE)), month(jh.END_DATE)), '/', year(jh.END_DATE)) as 'Data de rescisão',
  ROUND((DATEDIFF( (jh.END_DATE) ,(jh.START_DATE) )) / 365, 2) as `Anos trabalhados`
from
	employees as emp
join
	job_history as jh
on
	emp.EMPLOYEE_ID = jh.EMPLOYEE_ID 
order by `Nome completo`, `Anos trabalhados` ASC;
