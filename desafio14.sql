(SELECT DISTINCT
    Country
FROM
    w3schools.suppliers) UNION (SELECT DISTINCT
    Country
FROM
    w3schools.customers) ORDER BY Country LIMIT 5;
