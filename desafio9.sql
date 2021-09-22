SELECT CONCAT(e.FirstName," ", e.LastName) AS "Nome completo", COUNT(o.EmployeeID) as "Total de pedidos"
FROM w3schools.employees e INNER JOIN w3schools.orders o 
ON e.EmployeeID = o.EmployeeID 
GROUP BY CONCAT(e.FirstName," ", e.LastName) -- precisa ter esse agrupamento pra dar certo com o COUNT feito, senão não dá certo.
ORDER BY COUNT(o.OrderID);

-- Ao fazer o COUNT do employee_id na tabela orders, o mysql entende que Fulano(employee_id=1,por exemplo)
-- fez o pedido 5 vezes. Aí vai agrupar com o nome da pessoa fulana.
-- Então deve aparecer o nome completo dela e total de pedidos = 5, nesse exemplo.
