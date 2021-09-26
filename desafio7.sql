SELECT 
    (SELECT 
            UCASE(CONCAT(first_name, ' ', last_name))
        FROM
            hr.employees AS E
        WHERE
            E.EMPLOYEE_ID = H.EMPLOYEE_ID) AS 'Nome completo',
    START_DATE AS 'Data de início',
    (SELECT 
            SALARY
        FROM
            hr.employees AS E
        WHERE
            E.EMPLOYEE_ID = H.EMPLOYEE_ID) AS 'Salário'
FROM
    hr.job_history AS H
WHERE
    MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC , `Data de início` ASC;
