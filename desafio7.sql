SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome Completo',
    HIRE_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.employees
WHERE
    HIRE_DATE BETWEEN '1987-01-01' AND '1987-3-30';
