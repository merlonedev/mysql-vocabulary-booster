SELECT cont.ContactName AS `Nome de contato`,
ship.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM w3schools.orders AS ord
JOIN w3schools.customers AS cont ON ord.CustomerID = cont.CustomerID
JOIN w3schools.shippers AS ship ON ord.ShipperID = ship.ShipperID
WHERE ship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
