SELECT j.JOB_TITLE as "Cargo", ROUND(avg(e.SALARY),2) as "Média salarial", CASE -- esse ROUND é a forma de fazer a média arredondada com 2 casas decimais 
WHEN avg(e.SALARY) >= 2000 and avg(e.SALARY)<=5800 THEN "Júnior"
WHEN avg(e.SALARY) > 5800 and avg(e.SALARY)<=7500 THEN "Pleno"
WHEN avg(e.SALARY) > 7500 and avg(e.SALARY)<=10500 THEN "Sênior"
ELSE "CEO"
END as "Senioridade"
FROM hr.jobs j INNER JOIN hr.employees e  ON j.JOB_ID = e.JOB_ID -- onde faço a conexão entre as 2 tabelas
GROUP BY j.JOB_TITLE -- só deu certo se botar o group by. Fazendo o agrupamento pelos cargos, dá certo de fazer a média dos salários do cargo.
ORDER BY avg(e.SALARY) ASC, j.JOB_TITLE ASC;

-- EXPLICAÇÃO:  São 2 tabelas( jobs e employees) e ambas têm a coluna JOB_ID. Toda vez que um JOB_ID de uma 
-- for igual ao JOB_ID da outra, deve ter SELECT de 3 colunas( as 3 pedidas no README)
-- SOBRE GROUP BY: Eu uso pra agrupar todos os cargos 1 vez na lista(ex: Pra evitar que apareça 17 vezes um
-- cargo de STOCK CLERK). Ao agrupar, só aparece 1X no resultado. E SÓ ASSIM DÁ CERTO.
