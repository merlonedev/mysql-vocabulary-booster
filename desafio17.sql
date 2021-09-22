DELIMITER $$
CREATE TRIGGER trigger_insere_data_na_coluna_orderdate
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
DELIMITER ;
