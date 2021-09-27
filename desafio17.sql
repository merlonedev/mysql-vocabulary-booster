DELIMITER $$
CREATE TRIGGER order_date_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
DELIMITER ;
