USE w3schools;

DELIMITER $$
CREATE TRIGGER triggerReq15 -- cria um gatilho que bota a data atual na order_date
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate=current_date; -- acho que podia ser NOW()
END $$ -- quando inserir algo na tabela orders, vai inserir também a data atual na coluna order_date.

DELIMITER ;
