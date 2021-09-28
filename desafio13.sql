SELECT
    produtos.ProductName AS 'Produto', produtos.Price AS 'Preço'
FROM
    w3schools.products AS produtos
WHERE
    (SELECT 
            Quantity
        FROM
            w3schools.order_details
        WHERE
            Quantity > 80
                AND ProductID = produtos.ProductID)
ORDER BY Produto ASC;
