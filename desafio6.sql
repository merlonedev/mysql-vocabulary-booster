SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    jb.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    employees AS e
        JOIN
    jobs AS jb ON jb.JOB_ID = e.JOB_ID
        JOIN
    job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        JOIN
    departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC;
