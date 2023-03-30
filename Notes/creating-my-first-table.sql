CREATE TABLE student(
    student_id INT,
    -- name VARCHAR(20),
    name VARCHAR(20) CHARACTER SET utf8mb4,
    major VARCHAR(20),
    PRIMARY KEY (student_id) -- cant have duplicate
);

DESCRIBE student; -- displaying table
DROP TABLE student; -- remove table

ALTER TABLE student ADD gpa DECIMAL(3, 2); -- 3 digit with 2 decimal point
ALTER TABLE student DROP COLUMN gpa;

SELECT * FROM student; -- grab information from `student`
-- To insert table
-- Values' arguement = self
INSERT INTO student VALUES(1, '椎名', 'Art');
INSERT INTO student VALUES(2, '四宮', 'Economics');
INSERT INTO student(student_id, name) VALUES(3, '高木'); -- major is null
