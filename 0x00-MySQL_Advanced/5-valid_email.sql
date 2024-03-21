DELIMITER //

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        SET NEW.valid_email = 0; -- Assuming 0 represents an invalid email
    END IF;
END;
//

DELIMITER ;
