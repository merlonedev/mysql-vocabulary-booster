SELECT
CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME )
AS "Nome completo funcionário 1",
employees.SALARY
AS "Salário funcionário 1",
employees.PHONE_NUMBER
AS "Telefone funcionário 1",
CONCAT(compare_employees.FIRST_NAME, " ", compare_employees.LAST_NAME)
AS "Nome completo funcionário 2",
compare_employees.SALARY
AS "Salário funcionário 2",
compare_employees.PHONE_NUMBER
AS "Telefone funcionário 2"
FROM hr.employees AS employees, hr.employees AS compare_employees
WHERE employees.JOB_ID = compare_employees.JOB_ID
AND employees.EMPLOYEE_ID <> compare_employees.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1` ASC,
`Nome completo funcionário 2` ASC;
