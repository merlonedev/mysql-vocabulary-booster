SELECT  CONCAT(FIRST_NAME, ' ',LAST_NAME) AS 'Nome completo', 
cargo.JOB_TITLE AS Cargo,
jh.START_DATE AS 'Data de início do cargo' ,
d.DEPARTMENT_NAME AS Departamento

FROM job_history AS jh
INNER JOIN employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID 

INNER JOIN jobs AS cargo
ON cargo.JOB_ID = jh.JOB_ID

INNER JOIN departments AS d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID

ORDER BY `Nome completo` DESC,
`Cargo`;
