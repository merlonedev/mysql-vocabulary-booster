SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
    j.job_title AS `Cargo`,
    jh.start_date AS `Data de início do cargo`,
    d.department_name AS `Departamento`
FROM
    hr.employees AS e
        JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        JOIN
    hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
        JOIN
    hr.jobs AS j ON j.JOB_ID = jh.JOB_ID
ORDER BY `Nome completo` DESC , `Cargo`;
