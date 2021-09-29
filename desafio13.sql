SELECT DISTINCT
    P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM
    w3schools.order_details AS D
        JOIN
    w3schools.products AS P
WHERE
    Quantity > 80
ORDER BY `Produto` ASC;
