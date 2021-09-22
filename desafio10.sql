SELECT 
    p.ProductName AS 'Produto',
    MIN(od.Quantity) AS 'Mínima',
    MAX(od.Quantity) AS 'Máxima',
    AVG(od.Quantity) AS 'Média'
FROM
    order_details od
        INNER JOIN
    products AS p ON p.ProductID = od.ProductID
GROUP BY Produto
ORDER BY Média , Produto;
