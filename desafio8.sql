SELECT cust.ContactName AS 'Nome de contato', ship.ShipperName AS 'Empresa que fez o envio', 
OrderDate AS 'Data do pedido' FROM w3schools.orders AS ORD

INNER JOIN w3schools.customers AS cust
ON ORD.CustomerID = cust.CustomerID

INNER JOIN w3schools.shippers AS ship
ON ORD.ShipperID = ship.ShipperID

WHERE ship.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de Contato`, `Empresa que fez o envio`, `Data do pedido`;