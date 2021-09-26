SELECT 
    p.ProductName AS Produto,
    p.Price AS Preço
FROM
    products AS p
        JOIN
    order_details AS o ON o.ProductID = p.ProductID
WHERE
    o.Quantity > 80
ORDER BY Produto;