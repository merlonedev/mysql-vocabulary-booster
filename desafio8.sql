SELECT 
    c.ContactName AS `Nome de contato`,
    s.ShipperName,
    o.OrderDate
FROM
    customers AS c
        INNER JOIN
    orders AS o ON c.CustomerID = o.CustomerID
        INNER JOIN
    shippers AS s ON s.ShipperID = o.ShipperID
ORDER BY c.ContactName , s.ShipperName , o.OrderDate
