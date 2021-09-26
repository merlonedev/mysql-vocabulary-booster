SELECT 
    ContactName AS 'Nome de contato',
    (SELECT shipperName from w3schools.shippers WHERE w3schools.oders.OrderID = w3schools.shippers.ShipperID )
FROM
    w3schools.customers;
