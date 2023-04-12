-- Inserting additional data into employee table
INSERT INTO employee VALUES(109, 'Pam', 'Beesly', '1979-03-25', 'F', 68000, 102, 2);
INSERT INTO employee VALUES(110, 'Phyllis', 'Vance', '1951-06-25', 'F', 67000, 102, 2);

-- Example queries:
-- Get the names and salaries of all employees in Corporate branch
SELECT first_name, last_name, salary
FROM employee
WHERE branch_id = 1;

-- Get the names and sales of all employees who work with FedEx
SELECT e.first_name, e.last_name, w.total_sales
FROM employee e
JOIN works_with w ON e.emp_id = w.emp_id
JOIN client c ON w.client_id = c.client_id
WHERE c.client_name = 'FedEx';

-- Get the names of all employees who do not work with any client
SELECT first_name, last_name
FROM employee
WHERE emp_id NOT IN (SELECT emp_id FROM works_with);

-- Get the names of all employees who work in a branch that does not have a manager
SELECT first_name, last_name
FROM employee
WHERE branch_id NOT IN (SELECT branch_id FROM branch WHERE mgr_id IS NOT NULL);



