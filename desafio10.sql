SELECT 
    p.ProductName AS 'Produto',
    ROUND(MIN(od.Quantity), 2) AS 'Mínima',
    ROUND(MAX(od.Quantity), 2) AS 'Máxima',
    ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
    products AS p
        INNER JOIN
    order_details AS od ON od.productID = p.ProductID
GROUP BY p.ProductName
HAVING ROUND(AVG(od.Quantity), 2) > 20.00
ORDER BY Média ASC , Produto;
