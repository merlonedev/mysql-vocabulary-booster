SELECT 
    p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM
    products AS p
        INNER JOIN
    order_details AS o ON p.ProductID = o.ProductID
WHERE
    o.Quantity > 80
ORDER BY Produto;
