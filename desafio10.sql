SELECT 
    product.ProductName AS Produto,
    MIN(detail.Quantity) AS Mínima,
    MAX(detail.Quantity) AS Máxima,
    ROUND(AVG(detail.Quantity), 2) AS Média
FROM
    w3schools.order_details AS detail
        JOIN
    w3schools.products AS product ON product.ProductID = detail.ProductID
GROUP BY Produto
HAVING Média > 20;
