SELECT
    PROD.ProductName AS 'Produto', PROD.Price AS 'Preço'
FROM
    w3schools.products AS PROD
        INNER JOIN
    w3schools.order_details AS DET ON DET.ProductID = PROD.ProductID
WHERE
    DET.Quantity > 80
ORDER BY PROD.ProductName;
