select JOB_ID as "Cargo" ,
case 
when salary between  5000 and  10000 then " Baixo" 
 WHEN max_salary BETWEEN 5000 and 10000 THEN 'Baixo'
when salary between  10001 and 20000  then "Médio" 
when salary between  20001 and 30000 then "Alto"	
else  "Altíssimo"	
end as 'Nível' 
from hr.employees; 
