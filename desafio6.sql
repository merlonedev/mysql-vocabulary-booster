SELECT
    CONCAT(employee.FIRST_NAME,
            ' ',
            employee.LAST_NAME) AS 'Nome completo',
    cargo.JOB_TITLE AS 'Cargo',
    jhistory.START_DATE AS 'Data de início do cargo',
    department.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS employee
        INNER JOIN
    hr.job_history AS jhistory ON employee.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS cargo ON jhistory.JOB_ID = cargo.JOB_ID
        INNER JOIN
    hr.departments AS department ON jhistory.DEPARTMENT_ID = department.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC;
