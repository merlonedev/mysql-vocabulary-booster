USE hr; -- usando aqui, eu não preciso usar dentro da função
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailEmployee VARCHAR(50))
RETURNS INT READS SQL DATA -- o retorno da função será número inteiro
BEGIN
DECLARE numberOfJobs INT; -- declarando o que será o retorno da função
SELECT  COUNT(*) FROM job_history j INNER JOIN employees e 
ON j.EMPLOYEE_ID = e.EMPLOYEE_ID -- ponto em comum dessas duas tabelas
WHERE e.EMAIL = emailEmployee -- faz o count somente onde o valor da coluna EMAIL(tabela employees) for O MESMO que o digitado como email no parâmetro da função criada.
INTO numberOfJobs; -- toda essa função eu vou jogar no numberOfJobs e vou retornar isso logo abaixo   
RETURN numberOfJobs;
END $$

DELIMITER ;
