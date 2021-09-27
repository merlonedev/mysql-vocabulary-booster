SELECT
    CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
    Count(O.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.orders AS O
        JOIN
    w3schools.employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos` ASC;
