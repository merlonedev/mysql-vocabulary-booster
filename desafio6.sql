SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS 'Cargo',
    e.HIRE_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.jobs j
        INNER JOIN
    hr.employees e ON j.JOB_ID = e.JOB_ID
        INNER JOIN
    hr.departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , j.JOB_TITLE;
