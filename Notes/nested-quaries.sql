-- Nested Queries

-- Find employee name that makes a total sale of more than or equal to 30000
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id -- should only have on column
    FROM works_with
    WHERE works_with.total_sales >= 30000
);


SELECT works_with.emp_id AS 'Employee ID', works_with.total_sales AS 'Total sales'
FROM works_with
WHERE works_with.total_sales >= 30000;

-- Find all client who are handled by the branch that Michael Scott manages
-- Asume we know Michael's ID (102)

SELECT client.client_name AS "Michael Scott's branch client"
FROM client
WHERE branch_id IN(
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1 -- To make sure that it only returns one value
);
