SELECT 
    cst.ContactName AS `Nome de contato`,
    shp.ShipperName AS `Empresa que fez o envio`,
    ordr.OrderDate AS `Data do pedido`
FROM
    w3schools.customers AS cst
        INNER JOIN
    w3schools.orders AS ordr ON ordr.CustomerID = cst.CustomerID
        INNER JOIN
    w3schools.shippers AS shp ON shp.ShipperID = ordr.ShipperID
WHERE
    shp.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY cst.ContactName , shp.ShipperName , ordr.OrderDate;
