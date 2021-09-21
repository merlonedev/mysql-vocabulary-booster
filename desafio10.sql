use w3schools;
select * from orders;
select * from order_details;
select * from customers;
select * from employees;
select * from suppliers;
select * from shippers;
select * from products;

select * from w3schools.customers;
select count(*) from w3schools.employees;

SELECT 
    ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON p.ProductID = od.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
