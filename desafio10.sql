use w3schools;
SELECT 
    p.ProductName AS 'Produto',
    min(od.Quantity) as 'Mínima',
    max(od.Quantity) as 'Máxima',
    round(avg(od.Quantity),2) as 'Média'
FROM
order_details AS od 
    INNER JOIN
    orders AS o ON o.OrderID = od.OrderID
    INNER JOIN
    products AS p ON p.ProductID = od.ProductID
    group by `Produto`
    having avg(od.Quantity) > 20
--    order by `Média`
    order by round(avg(od.Quantity),2), `Produto`;
