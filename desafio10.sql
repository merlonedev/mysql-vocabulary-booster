SELECT 
    PR.ProductName AS 'Produto',
    MIN(ORD.Quantity) AS 'Mínima',
    MAX(ORD.Quantity) AS 'Máxima',
    ROUND(AVG(ORD.Quantity), 2) AS 'Média'
FROM
    w3schools.order_details AS ORD
        INNER JOIN
    w3schools.orders AS orders ON orders.OrderID = ORD.OrderID
        INNER JOIN
    w3schools.products AS PR ON PR.ProductID = ORD.ProductID
GROUP BY ORD.ProductID
HAVING Média > 20
ORDER BY Média , Produto;
