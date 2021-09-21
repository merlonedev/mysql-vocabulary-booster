SELECT 
    sub.prod AS 'Produto',
    sub._min AS 'Mínima',
    sub._max AS 'Máxima',
    sub._avg AS 'Média'
FROM
    (SELECT 
        p.ProductName AS prod,
            MIN(od.Quantity) AS _min,
            MAX(od.Quantity) AS _max,
            ROUND(AVG(od.Quantity), 2) AS _avg
    FROM
        order_details od
    INNER JOIN products p ON od.ProductID = p.ProductID
    GROUP BY p.ProductName) sub
WHERE
    sub._avg > 20.00
ORDER BY sub._avg , sub.prod;
