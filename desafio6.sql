SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    dep.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history jh
        JOIN
    hr.jobs job ON job.JOB_ID = jh.JOB_ID
        JOIN
    hr.employees emp ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
        JOIN
    hr.departments dep ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC , job.JOB_TITLE;
    
