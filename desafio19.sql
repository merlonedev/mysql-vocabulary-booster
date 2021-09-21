DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (mes int, ano int )
RETURNS INT
READS SQL DATA 
BEGIN
	RETURN (
	select
	count(employee_id) 
	from employees
	where 
	year(hire_date) = ano
    and
    month(hire_date) = mes
    );
END
$$
DELIMITER ;
