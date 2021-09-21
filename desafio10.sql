SELECT 
    p.ProductName AS Produto,
    MIN(od.Quantity) AS 'Mínima',
    MAX(od.Quantity) AS 'Máxima',
    ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
    order_details AS od
        JOIN
    products p ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING
    ROUND(AVG(od.Quantity), 2) > '20.00'
ORDER BY ROUND(AVG(od.Quantity), 2) , p.ProductName;
