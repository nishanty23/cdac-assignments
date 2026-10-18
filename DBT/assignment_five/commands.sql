/*
1) Print 1 to 5 using REPEAT
*/

DELIMITER //

CREATE PROCEDURE print_numbers()
BEGIN
    DECLARE i INT DEFAULT 1;

    REPEAT
        SELECT i;
        SET i = i + 1;
    UNTIL i > 5
    END REPEAT;

END //

DELIMITER ;

-----------------------------------------------------------------------------------------------------------
