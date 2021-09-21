SELECT 
    CONCAT(EM.FIRST_NAME, ' ', EM.LAST_NAME) AS 'Nome completo',
    JB.JOB_TITLE AS 'Cargo',
    JBH.START_DATE AS 'Data de início do cargo',
    DT.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS EM
        INNER JOIN
    hr.job_history AS JBH ON JBH.EMPLOYEE_ID = EM.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS JB ON JB.JOB_ID = JBH.JOB_ID
        INNER JOIN
    hr.departments AS DT ON DT.DEPARTMENT_ID = JBH.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
