SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome Completo',
    j.JOB_TITLE AS Cargo,
    jh.START_DATE AS 'Data de ínicio do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    employees AS e
        INNER JOIN
    jobs AS j ON e.JOB_ID = j.JOB_ID
        INNER JOIN
    departments AS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
        INNER JOIN
    job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY 'Nome Completo' DESC , 'Cargo';
