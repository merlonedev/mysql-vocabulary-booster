SELECT 
    prod.ProductName AS 'Produto',
    MIN(qtt.Quantity) AS 'Mínima',
    MAX(qtt.Quantity) AS 'Máxima',
    ROUND(AVG(qtt.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS prod
        INNER JOIN
    w3schools.order_details AS qtt ON qtt.ProductID = prod.ProductID
GROUP BY prod.ProductID
HAVING AVG(qtt.Quantity) > 20
ORDER BY AVG(qtt.Quantity) , prod.ProductName;
