SELECT 
    P.productname AS Produto,
    MIN(D.quantity) AS Mínima,
    MAX(D.quantity) AS Máxima,
    ROUND(AVG(D.quantity), 2) AS Média
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS D ON D.productid = P.productid
GROUP BY D.productid
HAVING AVG(D.quantity) > 20
ORDER BY Média , P.productname;
