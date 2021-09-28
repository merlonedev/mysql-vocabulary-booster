use w3schools;
SELECT 
    p.ProductName AS `Produto`, p.Price AS Preço
FROM
    order_details AS od 
JOIN
    products AS p ON p.ProductID = od.ProductID
where od.Quantity > 80
-- ORDER BY `Produto`;
ORDER BY p.ProductName;
