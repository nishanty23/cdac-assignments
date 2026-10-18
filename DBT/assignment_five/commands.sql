/*
1) Print 1 to 5 using REPEAT
2) Write a procedure called print_numbers that displays:
    1
    2
    3
    4
    5

    using REPEAT...UNTIL.
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

CALL print_numbers();

-----------------------------------------------------------------------------------------------------------

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

CALL print_numbers();

-----------------------------------------------------------------------------------------------------------
