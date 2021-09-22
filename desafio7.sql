SELECT
    CONCAT(UCASE(emp.first_name),
            ' ',
            UCASE(emp.last_name)) AS 'Nome completo',
    his.START_DATE AS 'Data de início',
    emp.SALARY AS 'Salário'
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS his ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE
    MONTH(his.START_DATE) = 1
        OR MONTH(his.START_DATE) = 2
        OR MONTH(his.START_DATE) = 3
ORDER BY `Nome completo` ASC , `Data de início` ASC;
