USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_order_create
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = DATE(NOW());
END $$
DELIMITER ;
