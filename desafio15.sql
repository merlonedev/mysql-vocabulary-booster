DELIMITER $$

CREATE PROCEDURE
	buscar_media_por_cargo(IN cargo varchar(30))
BEGIN
	select 
		round(avg(Salary), 2) as 'Média salarial'
	from
		employees as emp
	join
		jobs as jb
	on emp.job_id = jb.job_id
	group by jb.job_title
	having jb.job_title = cargo;
END

$$

DELIMITER ;
