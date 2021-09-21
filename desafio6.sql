SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome Completo',
    j.JOB_TITLE AS Cargo,
    e.HIRE_DATE AS 'Data de ínicio do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    employees AS e
        INNER JOIN
    jobs AS j ON e.JOB_ID = j.JOB_ID
        INNER JOIN
    departments AS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
