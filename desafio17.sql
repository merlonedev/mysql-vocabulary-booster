USE w3schools;
DELIMITER $$

CREATE TRIGGER onOrdersInsertion
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END$$

DELIMITER ;