-- Faça um relatório que mostre o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de
-- janeiro, fevereiro ou março.
-- Use o banco hr como referência
-- Monte uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA (não
-- se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- A terceira deve possuir o alias "Salário" e exibir o salário da pessoa.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.
-- Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em
-- ordem crescente.
SELECT 
    UCASE(CONCAT(employees.FIRST_NAME,
                    ' ',
                    employees.LAST_NAME)) AS 'Nome completo',
    jobs_history.START_DATE AS 'Data de início',
    employees.SALARY AS 'Salário'
FROM
    hr.job_history AS jobs_history
        INNER JOIN
    hr.employees AS employees ON jobs_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
HAVING (MONTH(jobs_history.START_DATE) BETWEEN 1 AND 3)
ORDER BY `Nome completo`, `Data de início` ASC;