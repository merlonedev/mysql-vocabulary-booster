SELECT C.ContactName AS `Nome de contato`,
S.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.orders O
RIGHT JOIN w3schools.customers C
ON O.CustomerID = C.CustomerID
RIGHT JOIN w3schools.shippers S
ON O.ShipperID = S.ShipperID
WHERE O.ShipperID IN (1, 2)
ORDER BY `Nome do contato`, `Empresa que fez o envio`, `Data do pedido`;
