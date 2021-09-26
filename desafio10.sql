SELECT 
    product.ProductName AS Produto,
    MIN(orderDetails.Quantity) AS Mínima,
    MAX(orderDetails.Quantity) AS Máxima,
    ROUND(AVG(orderDetails.Quantity), 2) AS Média
FROM
    w3schools.products AS product
        JOIN
    w3schools.order_details AS orderDetails ON product.ProductID = orderDetails.ProductID
GROUP BY Produto
HAVING AVG(orderDetails.Quantity) > 20
ORDER BY Média, Produto;
