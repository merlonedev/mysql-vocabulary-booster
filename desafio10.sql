SELECT 
    p.ProductName AS Produto,
    (SELECT 
            MIN(Quantity)
        FROM
            w3schools.order_details
        WHERE
            ProductID = p.ProductID) AS Mínima,
    (SELECT 
            MAX(Quantity)
        FROM
            w3schools.order_details
        WHERE
            ProductID = p.ProductID) AS Máxima,
    (SELECT 
            ROUND(AVG(Quantity), 2)
        FROM
            w3schools.order_details
        WHERE
            ProductID = p.ProductID) AS Média
FROM
    w3schools.products AS p
WHERE
    (SELECT 
            ROUND(AVG(Quantity), 2)
        FROM
            w3schools.order_details
        WHERE
            ProductID = p.ProductID) > 20
ORDER BY Média , Produto;
