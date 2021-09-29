use hr;

DELIMITER $$;

create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano (mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE contratados INT;
select COUNT(*) from employees
where MONTH(HIRE_DATE) = mes and YEAR(HIRE_DATE) = ano
into contratados;
return contratados;
END $$;

DELIMITER ;
