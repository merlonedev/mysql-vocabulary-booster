SELECT
    Cargo.job_title AS 'Cargo',
    Cargo.MAX_SALARY - Cargo.MIN_SALARY AS 'Variação Salarial',
    ROUND(Cargo.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(Cargo.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.employees AS employee
        INNER JOIN
    hr.jobs AS Cargo ON employee.JOB_ID = Cargo.JOB_ID
GROUP BY employee.JOB_ID
ORDER BY `Variação Salarial` ASC , `Cargo` ASC;
