SELECT
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS Cargo,
    jh.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        LEFT JOIN
    hr.jobs AS j ON j.JOB_ID = jh.JOB_ID
        LEFT JOIN
    hr.departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
