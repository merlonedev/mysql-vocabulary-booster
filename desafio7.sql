SELECT UCASE(CONCAT(T2.first_name,' ',T2.last_name)) AS 'nome completo',
T1.START_DATE AS 'Data de início',
T2.SALARY AS 'Salário'
FROM hr.job_history AS T1
INNER JOIN hr.employees AS T2
ON T1.employee_id = T2.employee_id
ORDER BY CONCAT (T2.first_name,' ',T2.last_name) ASC, T1.START_DATE ASC;
