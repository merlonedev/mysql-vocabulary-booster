SELECT 
    CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) 'Nome completo',
    jh.START_DATE 'Data de início',
    e.SALARY 'Salário'
FROM
    hr.job_history jh
        INNER JOIN
    hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs j ON j.JOB_ID = jh.JOB_ID
WHERE
    MONTH(jh.START_DATE) IN (1 , 2, 3)
ORDER BY 'Nome completo' , 'Data de início';
