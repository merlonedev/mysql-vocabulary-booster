SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome Completo`,
    h.JOB_TITLE AS `Cargo`,
    j.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.job_history AS j
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS h ON h.JOB_ID = j.JOB_ID
        INNER JOIN
    hr.departments AS d ON d.DEPARTMENT_ID = j.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC , `Cargo` ASC;
