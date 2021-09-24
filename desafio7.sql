SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) 'Nome completo',
    h.START_DATE 'Data de início',
    e.SALARY 'Salário'
FROM
    hr.job_history h
        INNER JOIN
    hr.employees e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID and h.START_DATE BETWEEN '1900-01-01' AND '1999-03-31'
ORDER BY e.FIRST_NAME , h.START_DATE;
