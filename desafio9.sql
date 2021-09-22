-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido,
-- mostrando também seu total de pedidos feitos

SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    orders o
        INNER JOIN
    employees e ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
