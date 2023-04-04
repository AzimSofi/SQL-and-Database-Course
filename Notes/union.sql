-- Union (combine to a new list)
-- Only works if both table contains the same number of columns (So we select one column)
-- Only works if both are the same datatype

-- FInd a list of employees and branch names
SELECT first_name AS "Employee's first name"
FROM employee;

SELECT branch_name AS "Branch name"
FROM branch;

SELECT first_name AS "Employee's first name and Branch name and Client names"
FROM employee
UNION -- should have the same data type
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- Find a list of all clients and branch supplier's name
SELECT client_name, client.branch_id -- can grab 2 only if its on both table
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id 
FROM branch_supplier; -- it also has an ID

-- Find a list of all money spent or earned by the company
SELECT total_sales AS 'Money spent or earned'
FROM works_with
UNION
SELECT salary
FROM employee;
