SELECT 
    P.ProductName AS `Produto`, P.Price AS `Preço`
FROM
    w3schools.order_details AS O
        JOIN
    products AS P ON O.ProductID = P.ProductID
WHERE
    O.Quantity > 80
ORDER BY `Produto`;
