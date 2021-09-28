use hr;
SELECT 
    concat(e.firstName, ' ', e.lastName) AS 'Nome completo funcionário 1',
    Country AS `País`,
    (SELECT 
            COUNT(Country) - 1
        FROM
            employees as e
        WHERE
            Country = `País`) AS `Número de compatriotas`
FROM
    employees
HAVING `Número de compatriotas` > 0
ORDER BY ContactName;
