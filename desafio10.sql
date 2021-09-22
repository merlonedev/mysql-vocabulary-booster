SELECT 
    p.ProductName AS 'Produto',
    MIN(od.Quantity) AS 'Mínima',
    MAX(od.Quantity) AS 'Máxima',
    ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
    order_details od
        INNER JOIN
    products AS p ON p.ProductID = od.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média , Produto;
