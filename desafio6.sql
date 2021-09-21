SELECT 
    CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS `Cargo`,
    jh.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    employees AS `em`
INNER JOIN job_history AS `jh`
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN jobs AS `j`
ON jh.JOB_ID = j.JOB_ID
INNER JOIN departments AS `d`
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;
