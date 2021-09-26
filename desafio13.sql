-- Exiba todos os produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 02 colunas:
-- A primeira deve possuir o alias "Produto" e exibir o nome do produto.
-- A segunda deve possuir o alias "Preço" e exibir o preço desse produto.
-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.
SELECT 
    products.ProductName AS 'Produto', products.Price AS 'Preço'
FROM
    w3schools.products AS products
        INNER JOIN
    w3schools.order_details AS order_details ON products.ProductID = order_details.ProductID
WHERE order_details.Quantity > 80
ORDER BY `Produto` ASC;
