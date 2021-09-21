SELECT 
    p.ProductName AS Produto,
    MIN(o.Quantity) AS Mínima,
    MAX(o.Quantity) AS Máxima,
    ROUND(AVG(o.Quantity), 2) AS Média
FROM
    products AS p
        JOIN
    order_details AS o ON p.ProductID = o.ProductID
GROUP BY p.ProductID
HAVING Média > 20
ORDER BY Média, Produto ;
