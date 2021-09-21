SELECT 
    pr.ProductName AS Produto,
    MIN(od.Quantity) AS Mínima,
    MAX(od.Quantity) AS Máxima,
    ROUND(AVG(od.Quantity), 2) AS Média
FROM
    w3schools.products pr
        JOIN
    w3schools.order_details od ON od.ProductID = pr.ProductID
GROUP BY pr.ProductName
HAVING ROUND(AVG(od.Quantity)) > 20
ORDER BY Média , Produto;
