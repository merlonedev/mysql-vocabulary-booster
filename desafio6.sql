SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS Cargo,
    jh.START_DATE AS `Data de início do cargo`,
    DEPARTMENT_NAME AS Departamento
FROM
    employees AS e
        JOIN
    job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        JOIN
    jobs AS j ON jh.JOB_ID = j.JOB_ID
        JOIN
    departments AS dt ON dt.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
