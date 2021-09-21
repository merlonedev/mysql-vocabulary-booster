SELECT 
    CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME) AS 'Nome completo funcionário 1',
    emp1.SALARY AS 'Salário funcionário 1',
    emp1.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME) AS 'Nome completo funcionário 2',
    emp2.SALARY AS 'Salário funcionário 2',
    emp2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees emp1,
    hr.employees emp2
WHERE
    emp1.JOB_ID = emp2.JOB_ID
        AND emp1.EMPLOYEE_ID != emp2.EMPLOYEE_ID
ORDER BY 1 , 4;