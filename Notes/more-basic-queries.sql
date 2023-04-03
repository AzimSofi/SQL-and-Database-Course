-- -----------------------------------------------------------------------------

SELECT * 
FROM employee;

SELECT * 
FROM branch;

SELECT * 
FROM client;

SELECT * 
FROM works_with;

SELECT * 
FROM branch_supplier;

-- -----------------------------------------------------------------------------

SELECT *
FROM employee
ORDER BY salary DESC;

-- Find all employees ordered by sex and name
SELECT *
FROM employee
ORDER BY employee.sex DESC, employee.first_name ASC, employee.last_name ASC;

-- Find the first 5 employess in the table
SELECT *
FROM employee
ORDER BY employee.emp_id ASC
LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, last_name
FROM employee;

-- Find the forename and surname names of all employees
SELECT first_name AS forename, last_name AS surname -- relabel
FROM employee;

-- Find out all the different genders
SELECT DISTINCT sex AS Gender
FROM employee;

SELECT DISTINCT branch_id AS 'Branch ID' -- string
FROM employee;

