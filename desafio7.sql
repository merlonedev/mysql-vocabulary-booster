    SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início do cargo',
    e.SALARY AS 'Departamento'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) IN (1 , 2, 3)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC , jh.START_DATE ASC;
