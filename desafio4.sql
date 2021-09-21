SELECT 
    Cargo.job_title AS 'Cargo',
    ROUND(SUM(employee.SALARY) / COUNT(employee.JOB_ID),
            2) AS 'Média salarial',
    (CASE
        WHEN
            ROUND(SUM(employee.SALARY) / COUNT(employee.JOB_ID),
                    2) BETWEEN 1999 AND 5801
        THEN
            'Júnior'
        WHEN
            ROUND(SUM(employee.SALARY) / COUNT(employee.JOB_ID),
                    2) BETWEEN 5800 AND 7501
        THEN
            'Pleno'
        WHEN
            ROUND(SUM(employee.SALARY) / COUNT(employee.JOB_ID),
                    2) BETWEEN 7500 AND 10501
        THEN
            'Sênior'
        WHEN
            ROUND(SUM(employee.SALARY) / COUNT(employee.JOB_ID),
                    2) > 10500
        THEN
            'CEO'
    END) AS 'Senioridade'
FROM
    hr.employees AS employee
        INNER JOIN
    hr.jobs AS Cargo ON employee.JOB_ID = Cargo.JOB_ID
GROUP BY employee.JOB_ID
ORDER BY `Média salarial` ASC , `Cargo` ASC;
