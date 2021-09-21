SELECT 
    ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
    w3schools.order_details AS o
        JOIN
    w3schools.products AS p ON o.ProductID = p.ProductID
GROUP BY o.ProductID
HAVING AVG(Quantity) > 20
ORDER BY AVG(Quantity) , ProductName;
