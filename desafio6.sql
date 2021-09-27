SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    jbs.JOB_TITLE AS Cargo,
    hist.START_DATE AS `Data de iní­cio do cargo`,
    dep.DEPARTMENT_NAME AS Departamento
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS hist ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
        INNER JOIN
	hr.jobs AS jbs ON jbs.JOB_ID = hist.JOB_ID
        INNER JOIN
    hr.departments AS dep ON dep.DEPARTMENT_ID = hist.DEPARTMENT_ID
    ORDER BY `Nome completo` DESC,  jbs.JOB_TITLE;
