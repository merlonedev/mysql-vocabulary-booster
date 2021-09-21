USE w3schools;
DELIMITER $$

CREATE TRIGGER saveDataOnInsertOrder
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
  SET NEW.orderDate = date(now());
END $$

DELIMITER ;
