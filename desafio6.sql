SELECT 
    `Nome completo`,
    `Cargo`,
    `Data de início do cargo`,
    `Departamento`
FROM
    (SELECT 
        E.EMPLOYEE_ID AS `FID`,
            CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
            J.JOB_TITLE AS `Cargo`
    FROM
        hr.employees AS E
    JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID) AS F
        JOIN
    (SELECT 
        E.EMPLOYEE_ID AS `SID`,
            JH.START_DATE AS `Data de início do cargo`,
            JH.DEPARTMENT_ID AS `Departamento`
    FROM
        hr.job_history AS JH
    JOIN hr.employees AS E ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID) AS S ON `FID` = `SID`
ORDER BY `Nome completo` DESC , Cargo;
