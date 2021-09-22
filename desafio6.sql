SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS `Cargo`,
    jh.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.employees AS e
        JOIN
    hr.job_history as jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        JOIN
    hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
        JOIN
    hr.departments d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC;
