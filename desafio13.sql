SELECT 
    products.ProductName AS Produto, 
    products.Price AS Preço
FROM
    w3schools.order_details AS orderDetails
        JOIN
    w3schools.products AS products ON orderDetails.ProductID = products.ProductID
WHERE
    orderDetails.Quantity > 80
GROUP BY Produto , Preço
ORDER BY Produto;
