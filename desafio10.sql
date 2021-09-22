SELECT
    PROD.ProductName AS 'Produto',
    MIN(DET.Quantity) AS 'Mínima',
    MAX(DET.Quantity) AS 'Máxima',
    ROUND(AVG(DET.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS PROD
        INNER JOIN
    w3schools.order_details AS DET ON DET.ProductID = PROD.ProductID
GROUP BY DET.ProductID
HAVING AVG(DET.Quantity) > 20
ORDER BY `Média`, PROD.ProductName;
