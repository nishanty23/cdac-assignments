/*
1) Write a procedure called check_marks that accepts p_marks and displays:
  90+ → Excellent
  75–89 → Good
  40–74 → Pass
  Below 40 → Fail

2) Write a procedure:
  check_grade(IN grade INT)

  with:
  1 → Excellent
  2 → Good
  3 → Average
  anything else → Invalid
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

DELIMITER //

CREATE PROCEDURE check_grade(IN grade INT)
BEGIN
    CASE grade
        WHEN 1 THEN
            SELECT 'Excellent';
        WHEN 2 THEN
            SELECT 'Good';
        WHEN 3 THEN
            SELECT 'Average';
        ELSE
            SELECT 'Invalid';
    END CASE;
END //

DELIMITER ;

SET @num = 10;
CALL check_grade(@num);
-----------------------------------------------------------------------------------------------------------
