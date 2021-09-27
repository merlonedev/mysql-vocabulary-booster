SELECT 
    CUST.ContactName AS 'Nome do contato',
    SHIP.ShipperName AS 'Empresa que fez o envio',
    ORD.OrderDate AS 'Data do pedido'
FROM
w3schools.customers AS CUST
JOIN
w3schools.orders AS ORD ON CUST.CustomerID = ORD.CustomerID
JOIN
w3schools.shippers AS SHIP ON ORD.ShipperID = SHIP.ShipperID
ORDER BY CUST.CustomerName , SHIP.ShipperName , ORD.OrderDate;
