SELECT 
    CUST.ContactName AS 'Nome de contato',
    SHIP.ShipperName AS 'Empresa que fez o envio',
    ORD.OrderDate AS 'Data do pedido'
FROM
w3schools.customers AS CUST
JOIN
w3schools.orders AS ORD ON CUST.CustomerID = ORD.CustomerID
JOIN
w3schools.shippers AS SHIP ON ORD.ShipperID = SHIP.ShipperID
WHERE SHIP.ShipperName = 'Speedy Express' OR SHIP.ShipperName = 'United Package'
ORDER BY CUST.ContactName, SHIP.ShipperName, ORD.OrderDate;
