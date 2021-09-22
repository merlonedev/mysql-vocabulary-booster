SELECT 
    CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS `Nome completo`,
    J.JOB_TITLE AS Cargo,
    JH.START_DATE AS `Data de início do cargo`,
    DEP.DEPARTMENT_NAME AS Departamento
FROM
    job_history AS JH
        JOIN
    employees AS EMP ON JH.EMPLOYEE_ID = EMP.EMPLOYEE_ID
        JOIN
    jobs AS J ON JH.JOB_ID = J.JOB_ID
        JOIN
    departments AS DEP ON JH.DEPARTMENT_ID = DEP.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
