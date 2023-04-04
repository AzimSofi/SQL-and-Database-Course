-- Wildcards (pattern)
-- % = any no. of characters, _ = one character
SELECT *
FROM client
WHERE client_name LIKE '%LLC'; -- (Any thing that comes) + LLC // has to end with LLC

-- Find any employee that was born in October
SELECT *
FROM employee
WHERE birth_day LIKE '%-10-%'; -- or '____-10-__'

-- Find any clients who are schools
SELECT *
FROM client
WHERE client_name LIKE '%school%';
