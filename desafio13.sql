SELECT 
    p.ProductName AS Produto, p.Price AS Preço
FROM
    products AS p
        JOIN
    order_details AS od ON od.ProductID = p.ProductID
        AND od.Quantity > 80
ORDER BY ProductName;
