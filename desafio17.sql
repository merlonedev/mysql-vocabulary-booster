-- Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders, insira automaticamente a data atual na coluna OrderDate. Use o banco W3schools.
-- A partir disso, o avaliador vai executar dois processos:
-- 1-Inserir na tabela ordersum novo registro com os dados: CustomerID com valor 4, EmployeeID com valor 2 e ShipperID com valor 2;
-- 2-Montar uma query que mostre todos os CustomerID igual a 4.
-- Retomando que não é necessário incluir as queries para INSERIR e SELECIONAR, elas já vão ser executadas automaticamente pelo próprio teste.

USE w3schools;

DELIMITER $$

CREATE TRIGGER insere_data_atual
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
