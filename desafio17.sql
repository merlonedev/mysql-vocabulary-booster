DELIMITER $$
CREATE TRIGGER TRIGGER_ORDERS_DATE
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
DELIMITER ;