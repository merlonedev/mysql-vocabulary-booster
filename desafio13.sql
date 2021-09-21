 SELECT 
    p.ProductName AS 'Produto',
    p.Price AS 'Preço'
FROM
    order_details o
        INNER JOIN
    products p ON o.ProductID = p.ProductID
WHERE
    Quantity > 80
ORDER BY p.ProductName ASC;
