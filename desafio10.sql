SELECT 
    ProductName AS 'Produto',
    MIN(detalhes.quantity) AS 'Mínima',
    MAX(detalhes.quantity) AS 'Máxima',
    ROUND(AVG(detalhes.quantity), 2) AS 'Média'
FROM
    w3schools.products AS produtos
        INNER JOIN
    w3schools.order_details AS detalhes ON detalhes.ProductID IN (produtos.ProductID)
GROUP BY ProductName
HAVING ROUND(SUM(detalhes.quantity) / COUNT(*), 2) > 20
ORDER BY Média , Produto;
