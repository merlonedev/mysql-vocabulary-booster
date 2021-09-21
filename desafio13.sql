SELECT 
    P.ProductName AS 'Produto',
    P.Price AS 'Preço'
FROM
    w3schools.order_details AS ORD
        INNER JOIN
    w3schools.products AS P ON ORD.ProductID = P.ProductID
WHERE ORD.Quantity > 80
ORDER BY `Produto`;
