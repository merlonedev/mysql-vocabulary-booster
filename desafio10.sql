SELECT 
    p.ProductName AS 'Produto',
    MIN(od.Quantity) AS 'Mínimo',
    MAX(od.Quantity) AS 'Máximo',
    ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON p.ProductID = od.ProductID
GROUP BY p.ProductID
HAVING Média > 20
ORDER BY Média, Produto
