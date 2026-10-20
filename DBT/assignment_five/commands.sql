/*
1) Print 1 to 5 using REPEAT

3) Write a MySQL stored function:
    square_number(n INT)
    that returns the square of n.
    Then show how to call it for:
    5
4) Write a trigger called:
    validate_salary

    for:
    employee

    that runs BEFORE INSERT and prevents insertion when:
    salary < 0

    Use:
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Salary cannot be negative';
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

DELIMITER //

CREATE FUNCTION square_number(n INT)
RETURNS INT
DETERMINISTIC
NO SQL
BEGIN
    RETURN n * n;
END //

DELIMITER ;

SELECT square_number(5);

-----------------------------------------------------------------------------------------------------------

DELIMITER //

CREATE TRIGGER validate_salary
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END //

DELIMITER ;

-----------------------------------------------------------------------------------------------------------
