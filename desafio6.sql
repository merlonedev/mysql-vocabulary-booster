SELECT 
    (SELECT 
            CONCAT(first_name, ' ', last_name)
        FROM
            hr.employees AS E
        WHERE
            E.EMPLOYEE_ID = H.EMPLOYEE_ID) AS 'Nome Completo',
    (SELECT 
            job_title
        FROM
            hr.jobs AS J
        WHERE
            J.JOB_ID = H.JOB_ID) AS 'Cargo',
    START_DATE AS 'Data de início do cargo',
    (SELECT 
            DEPARTMENT_NAME
        FROM
            hr.departments
        WHERE
            DEPARTMENT_ID = H.DEPARTMENT_ID) AS 'Departamento'
FROM
    hr.job_history AS H
ORDER BY `Nome Completo` DESC , `Cargo` ASC;
