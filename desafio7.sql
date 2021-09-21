SELECT  CONCAT(UCASE(FIRST_NAME), ' ',UCASE(LAST_NAME)) AS 'Nome completo', 

jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'

FROM job_history AS jh
INNER JOIN employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID 

INNER JOIN jobs AS cargo
ON cargo.JOB_ID = jh.JOB_ID

INNER JOIN departments AS d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
WHERE MONTH(jh.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`,
`Data de início`;
