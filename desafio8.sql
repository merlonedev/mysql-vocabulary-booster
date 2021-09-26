SELECT 
    t2.ContactName AS `Nome de contato`,
    (SELECT 
            ShipperName
        FROM
            w3schools.shippers
        WHERE
            ShipperID = t1.ShipperID) AS `Empresa que fez o envio`,
    t1.OrderDate AS `Data do pedido`
FROM
    w3schools.orders AS t1
        INNER JOIN
    w3schools.customers AS t2 ON t1.CustomerID = t2.CustomerID
WHERE
    (SELECT 
            ShipperName
        FROM
            w3schools.shippers
        WHERE
            ShipperID = t1.ShipperID) IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
