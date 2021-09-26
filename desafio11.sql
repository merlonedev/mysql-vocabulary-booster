-- Exiba todas as pessoas clientes que possuem compatriotas.
-- Use o banco w3schools como referência
-- Mostre a quantidade de compatriotas para cada pessoa cliente.
-- Suponha que haja apenas 04 clientes:
-- Maria, do Brasil.
-- João, do Brasil.
-- Gabriela, do Brasil.
-- Alex, da Irlanda.
-- Logo, podemos dizer que Maria, João e Gabriela são compatriotas entre si, haja visto que as três pessoas moram no
-- Brasil. Além disso, podemos dizer que tanto Maria quanto João e Gabriela possuem duas pessoas compatriotas
-- associadas. Já Alex não possui compatriota, haja visto que não há outras pessoas da Irlanda.
-- Monte uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
-- A segunda deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
-- A terceira deve possuir o alias "Número de compatriotas" e exibir o número de pessoas que moram no mesmo país.
-- Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética.
SELECT 
    customers1.ContactName AS 'Nome',
    customers1.Country AS 'Páis',
    COUNT(*) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customers1,
    w3schools.customers AS customers2
WHERE
    customers1.Country = customers2.Country
        AND customers1.CustomerID <> customers2.CustomerID
GROUP BY customers1.ContactName , customers1.Country
ORDER BY customers1.ContactName ASC;
