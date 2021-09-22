SELECT 
    p.ProductName AS 'Produto',
    MIN(o.Quantity) AS 'Mínima',
    MAX(o.Quantity) AS 'Máxima',
    ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM
    w3schools.products p,
    w3schools.order_details o
WHERE
    o.ProductID = p.ProductID
GROUP BY o.ProductID
HAVING AVG(o.Quantity) > 20
ORDER BY 'Média' , 'Produto';
