SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
    J.JOB_TITLE AS 'Cargo',
    JH.START_DATE AS 'Data de início do cargo',
    D.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS E
        INNER JOIN
    hr.jobs AS J
        INNER JOIN
    hr.departments AS D
        INNER JOIN
    hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
        AND J.JOB_ID = JH.JOB_ID
        AND JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) DESC , Cargo;
