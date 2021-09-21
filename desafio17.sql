USE w3schools;
DELIMITER $$
CREATE TRIGGER auto_date
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.orderDate = NOW();
END $$
DELIMITER ;
