SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    h.JOB_TITLE AS `Cargo`,
    j.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    job_history AS j
        INNER JOIN
    employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
        INNER JOIN
    jobs AS h ON h.JOB_ID = j.JOB_ID
        INNER JOIN
    departments AS d ON d.DEPARTMENT_ID = j.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC , `Cargo` ASC;
