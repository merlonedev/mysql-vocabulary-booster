SELECT 
    CONCAT(employees.first_name,
            ' ',
            employees.last_name) AS 'Nome completo',
    CONCAT(IF(DAY(job_history.start_date) < 10,
                CONCAT('0', DAY(job_history.start_date)),
                DAY(job_history.start_date)),
            '/',
            IF(MONTH(job_history.start_date) < 10,
                CONCAT('0', MONTH(job_history.start_date)),
                MONTH(job_history.start_date)),
            '/',
            YEAR(job_history.start_date)) AS 'Data de início',
    CONCAT(IF(DAY(job_history.end_date) < 10,
                CONCAT('0', DAY(job_history.end_date)),
                DAY(job_history.end_date)),
            '/',
            IF(MONTH(job_history.end_date) < 10,
                CONCAT('0', MONTH(job_history.end_date)),
                MONTH(job_history.end_date)),
            '/',
            YEAR(job_history.end_date)) AS 'Data de rescisão',
    ROUND(DATEDIFF(job_history.end_date,
                    job_history.start_date) / 365, 2) AS 'Anos trabalhados'
FROM
    hr.job_history AS job_history
       JOIN
    hr.employees AS employees ON job_history.employee_id = employees.employee_id
ORDER BY `Nome completo` ASC , `Anos trabalhados` ASC;
