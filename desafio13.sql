SELECT 
    p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM
    (SELECT 
        ProductID
    FROM
        w3schools.order_details
    WHERE
        Quantity > 80) AS sub
        INNER JOIN
    w3schools.products AS p ON p.ProductID = sub.ProductID
ORDER BY 1;
