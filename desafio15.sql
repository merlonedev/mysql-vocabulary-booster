DELIMITER $$
CREATE procedure buscar_media_por_cargo(IN p_job)
SELECT 
    ROUND(AVG(e.salary), 2) AS 'Média salarial'    
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON j.job_id = e.job_id
where j.JOB_TITLE = p_job;
DELIMITER ;
