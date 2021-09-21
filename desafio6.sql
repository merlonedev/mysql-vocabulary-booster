SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    employees AS e
        JOIN
    job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        JOIN
    departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
        JOIN
    jobs AS j ON jh.JOB_ID = j.JOB_ID
ORDER BY `Nome completo` DESC, `Cargo`;
