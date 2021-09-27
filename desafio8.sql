SELECT
t2.CustomerName AS `Nome de contato`,
IF(t1.ShipperID = 1, 'Speedy Express', 'United Package') AS `Empresa que fez o envio`,
t1.OrderDate AS `Data do pedido`
FROM
(SELECT * FROM w3schools.orders WHERE ShipperID = 1 OR ShipperID = 2) AS t1
INNER JOIN w3schools.customers t2
ON t1.CustomerID =  t2.CustomerID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
