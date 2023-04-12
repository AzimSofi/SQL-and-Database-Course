use database_name; -- to select a database

SHOW TABLES;
DROP TABLE table_name;

-- If it gives an error command 
ALTER TABLE works_with DROP FOREIGN KEY works_with_ibfk_1;
ALTER TABLE client DROP FOREIGN KEY client_ibfk_1;
ALTER TABLE employee DROP FOREIGN KEY employee_ibfk_1, DROP FOREIGN KEY employee_ibfk_2;
ALTER TABLE branch DROP FOREIGN KEY branch_ibfk_1;

DROP TABLE works_with;
DROP TABLE client;
DROP TABLE employee;
DROP TABLE branch;
