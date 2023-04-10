-- Triggers
-- Do something when eg. an entry is added in the database

CREATE TABLE trigger_test(
    message VARCHAR(100)
);


-- Name of the trigger: my_trigger
-- Before inserting into the employee table,  for each item that is being inserted
-- it inserts the parameter value 'added new employee' to the trigger_test

-- DELIMITER? -: Default is ';' is to seperate SQL code lines
-- So changing the delimiter to '$$' we can now delimit the CREATE trigger while not
-- unintentionally deilimit the trigger on a semicolon

-- `use database_name` to select a database
-- Execute on Command Line
-- Execute one by one
-- 1. DELIMITER $$
-- 2. Trigger line
-- 3. DELIMITER ;
DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('Added new employee');
    END$$
DELIMITER ;

-- Test
INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);
--

-- ======================================================================== --
SELECT * FROM trigger_test;
SELECT* FROM employee;

DROP TABLE trigger_test;
-- ======================================================================== --

-- Access value from table
-- Reupate it on the terminal
DELIMITER $$
CREATE
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;

-- ======================================================================== --
DROP TRIGGER IF EXISTS my_trigger;
DROP TRIGGER IF EXISTS my_trigger1;
-- ======================================================================== --

--Conditional + Trigger
DELIMITER $$
CREATE
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('Added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('Added female employee');
        ELSE
            INSERT INTO trigger_test VALUES('Added an employee with a null value gender');
        END IF;
        END$$
DELIMITER ;

INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

SELECT * FROM trigger_test;
SELECT* FROM employee;

-- Variety of trigger
-- TRIGGER trigger_name BEFORE/AFTER INSERT/DELETE/UPDATE
