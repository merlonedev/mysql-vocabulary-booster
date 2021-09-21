SELECT 
    cus.ContactName AS 'Nome de contato',
    shi.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers cus
        JOIN
    w3schools.orders o ON o.CustomerID = cus.CustomerID
        JOIN
    w3schools.shippers shi ON shi.ShipperID = o.ShipperID
WHERE
    shi.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY cus.ContactName , shi.ShipperName , o.OrderDate; 
