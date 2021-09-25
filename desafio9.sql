-- Exiba todas as pessoas funcionárias que já realizaram algum pedido e o total dos pedidos feitos.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 02 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do
-- espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
-- Ordene seus resultados pelo total de pedidos em ordem crescente.
SELECT 
    CONCAT(employees.FirstName,
            ' ',
            employees.LastName) AS 'Nome completo',
    COUNT(orders.OrderID) AS 'Total de pedidos'
FROM
    w3schools.orders AS orders
        INNER JOIN
    w3schools.employees AS employees ON orders.EmployeeID = employees.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY `Total de pedidos` ASC;
