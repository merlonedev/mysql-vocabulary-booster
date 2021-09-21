SELECT
C.ContactName AS `Nome de contato`,
S.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.orders O
JOIN w3schools.shippers S
ON S.ShipperID = O.ShipperID
JOIN w3schools.customers C
ON O.CustomerID = C.CustomerID
WHERE S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY 1, 2, 3;