select JOB_ID as "Cargo" ,
case 
 WHEN salary BETWEEN  5000 and  10000 then " Baixo" 
 WHEN salary BETWEEN 5000 and 10000 THEN 'Baixo'
 WHEN salary BETWEEN  10001 and 20000  then "Médio" 
 WHEN salary BETWEEN  20001 and 30000 then "Alto"	
else  "Altíssimo"	
end as 'Nível' 
from hr.employees; 
