SELECT T1.ContactName AS 'Nome de contato',
T2.ShipperName AS 'Empresa que fez o envio',
T3.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS T1
INNER JOIN w3schools.orders AS T3
ON T1.customerID = T3.customerID
INNER JOIN w3schools.shippers AS T2
ON T2.ShipperID = T3.ShipperID
WHERE T3.ShipperID = 1 OR T3.ShipperID = 2
ORDER BY T1.ContactName ASC, T2.ShipperName ASC, T3.OrderDate ASC;
