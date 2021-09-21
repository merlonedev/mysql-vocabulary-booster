SELECT cust.CustomerName AS 'Nome de contato',
shipp.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS cust
INNER JOIN w3schools.orders AS ord
ON cust.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS shipp
ON ord.ShipperID = shipp.ShipperID
WHERE shipp.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
