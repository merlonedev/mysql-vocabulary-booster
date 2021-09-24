SELECT 
    p.ProductName AS Produto,
    MIN(od.Quantity) AS Mínima,
    MAX(od.Quantity) AS Máxima,
    ROUND(AVG(od.Quantity), 2) AS Média
FROM
    products p
        JOIN
    order_details od ON p.ProductID = od.ProductID
GROUP BY p.ProductID
HAVING Média > 20
ORDER BY Média , Produto;
