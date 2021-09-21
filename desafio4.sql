SELECT 
    j.JOB_TITLE 'Cargo',
    ROUND(AVG(SALARY), 2) 'Média salarial',
    CASE
        WHEN 'Média salarial' BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN 'Média salarial' BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN 'Média salarial' BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END 'Senioridade'
FROM
    employees e
        LEFT JOIN
    jobs j ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_ID
ORDER BY 'Média salarial' , 'Cargo';
