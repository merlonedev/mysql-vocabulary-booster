SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    sub.INICIO AS 'Data de início',
    sub.FIM AS 'Data de rescisão',
    sub.TEMPO AS 'Anos trabalhados'
FROM
    (SELECT 
        EMPLOYEE_ID AS 'EID',
            DATE_FORMAT(START_DATE, '%d/%m/%Y') AS 'INICIO',
            DATE_FORMAT(END_DATE, '%d/%m/%Y') AS 'FIM',
            ROUND((DATEDIFF(END_DATE, START_DATE) / 365), 2) AS 'TEMPO'
    FROM
        hr.job_history) AS sub
        INNER JOIN
    hr.employees AS e ON sub.EID = e.EMPLOYEE_ID
ORDER BY 1, 4;
