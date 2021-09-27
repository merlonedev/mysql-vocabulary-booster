SELECT 
    P.ProductName AS Produto, P.Price
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS OD ON P.ProductID = OD.ProductID
WHERE
    OD.Quantity > 80
ORDER BY Produto;
