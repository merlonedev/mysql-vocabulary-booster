SELECT 
    p.ProductName AS 'Produto',
    MIN(o.Quantity) AS 'Mínima',
    MAX(o.Quantity) AS 'Máxima',
    ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM
    order_details AS o
        INNER JOIN
    products AS p ON o.ProductID = p.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média , Produto;
