SELECT COUNT(emp_id) AS 'Total employee' -- since everyone has an id, it tells the number of people
FROM employee;

SELECT COUNT(super_id) AS 'Employee that has a supervisor' -- since everyone has an id, it tells the number of people
FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(*) AS 'Female employees born after 1970'
FROM employee
WHERE birth_day >= '1971-01-01' AND sex = 'F'; -- 'YYYY-MM-DD'

-- Find the average of all male employee's salaries
SELECT AVG(salary) AS 'Average salary of all male employees'
FROM employee
WHERE sex = 'M';

-- Find the sum of all employee's salaries
SELECT SUM(salary) AS 'The sum of all employees salary'
FROM employee;

SELECT MAX(salary) AS 'Max salary of female employees'
FROM employee
WHERE sex = 'F';

SELECT MIN(salary) AS 'Min payroll'
FROM employee;
