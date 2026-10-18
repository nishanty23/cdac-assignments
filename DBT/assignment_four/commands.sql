/*
1) Write a procedure called check_marks that accepts p_marks and displays:
  90+ → Excellent
  75–89 → Good
  40–74 → Pass
  Below 40 → Fail


*/
DELIMITER //

CREATE PROCEDURE check_marks(IN marks INT)
BEGIN
    IF marks >= 90 THEN
        SELECT 'Excellent';
    ELSEIF marks >= 75 THEN
        SELECT 'Good';
    ELSEIF marks >= 40 THEN
        SELECT 'Pass';
    ELSE
        SELECT 'Fail';
    END IF;
END //

DELIMITER ;

CALL check_marks(85);
-----------------------------------------------------------------------------------------------------------
