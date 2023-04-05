INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

SELECT *
FROM branch;

-- JOINS, combine rows from two or more table (based on the related column[foreign key])

-- Find all branches and the name of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name -- To display
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id; -- Related column (condition)

-- LEFT JOIN
-- FROM ___ all is included, but if condition not met, return NULL

-- LEFT TABLE = employee (FROM)
SELECT employee.emp_id, employee.first_name, branch.branch_name -- To display
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id; -- Related column (condition)

-- RIGHT TABLE = branch (JOIN)
SELECT employee.emp_id, employee.first_name, branch.branch_name -- To display
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id; -- Related column (condition)

--FULL OUTER JOIN, grab both right and left
