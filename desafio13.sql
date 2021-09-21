SELECT 
    a.ProductName AS Produto, a.Price AS Preço
FROM
    products AS a
        JOIN
    order_details AS b ON a.ProductID = b.ProductID
WHERE
    b.Quantity > 80
ORDER BY Produto;
