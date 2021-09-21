SELECT 
    UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
    JH.START_DATE AS 'Data de início',
    E.SALARY AS 'Salário'
FROM
    hr.employees as E inner join hr.job_history as JH on E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE
    MONTH(JH.START_DATE) IN (1,2,3)    
    ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) ASC , HIRE_DATE ASC;
