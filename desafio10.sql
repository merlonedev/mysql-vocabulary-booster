SELECT 
    prod.ProductName AS `Produto`,
    MIN(Quantity) AS `Mínima`,
    MAX(Quantity) AS `Máxima`,
    ROUND(AVG(Quantity), 2) AS `Média`
FROM
    w3schools.products AS prod
    INNER JOIN w3schools.order_details AS ords ON ords.ProductID = prod.ProductID
GROUP BY `Produto`
HAVING ROUND(AVG(Quantity), 2) > 20.00
ORDER BY `Média`, `Produto`;
