SELECT 
    CONCAT(E.firstname, ' ', E.lastname) AS 'Nome completo',
    COUNT(O.orderid) AS 'Total de pedidos'
FROM
    w3schools.employees AS E
        INNER JOIN
    w3schools.orders AS O ON O.employeeid = E.employeeid
GROUP BY O.employeeid
ORDER BY `Total de pedidos`;
