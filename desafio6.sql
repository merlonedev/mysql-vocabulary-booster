SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    employees AS e
    INNER JOIN
    job_history as jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    jobs AS j ON j.JOB_ID = jh.JOB_ID
        INNER JOIN
    departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC , Cargo;
