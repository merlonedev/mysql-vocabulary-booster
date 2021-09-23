SELECT 
    P.ProductName AS Produto,
    MIN(OD.Quantity) AS Mínima,
    MAX(OD.Quantity) AS Máxima,
    ROUND(AVG(OD.Quantity), 2) AS Média
FROM
    products AS P
        JOIN
    order_details AS OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
HAVING Média > 20
ORDER BY Média , Produto;
