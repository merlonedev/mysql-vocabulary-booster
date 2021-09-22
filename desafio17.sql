USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_order_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW(),
        NEW.CustomerID = 4,
        NEW.EmployeeID = 2,
        NEW.ShipperID = 2;
END $$
DELIMITER ;
