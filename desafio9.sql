SELECT 
    CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome completo`,
    COUNT(o.EmployeeID) AS `Total de pedidos`
FROM
    employees AS emp
        JOIN
    orders AS o ON emp.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
