SELECT 
    UCASE(CONCAT(first_name, ' ', last_name)) 'Nome completo',
    START_DATE 'Data de início',
    SALARY 'Salário'
FROM
    hr.job_history h
        INNER JOIN
    hr.employees e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
        AND MONTH(START_DATE) IN (01 , 02, 03)
ORDER BY e.FIRST_NAME , h.START_DATE;
