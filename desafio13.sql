SELECT 
    p.ProductName AS `Produto`, p.Price AS Preço
FROM
    w3schools.order_details AS od 
JOIN
    w3schools.products AS p ON p.ProductID = od.ProductID
where od.Quantity > 80
-- ORDER BY `Produto`;
ORDER BY p.ProductName;
