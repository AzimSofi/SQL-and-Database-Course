CREATE TABLE student(    
    student_id INT AUTO_INCREMENT, -- automatically increment
    name VARCHAR(20) CHARACTER SET utf8mb4 NOT NULL, -- cant be null
    major VARCHAR(20) DEFAULT 'undecided', -- null now becomes 'undecided'
    society VARCHAR(20) UNIQUE, -- cant have duplicate but can null
    PRIMARY KEY (student_id) -- NOT NULL and UNIQUE
);

DESCRIBE student; -- displaying table
DROP TABLE student; -- remove table

ALTER TABLE student ADD gpa DECIMAL(3, 2); -- 3 digit with 2 decimal point
ALTER TABLE student DROP COLUMN gpa;

SELECT * FROM student; -- grab information from `student`
-- To insert table
-- Values' arguement = self
INSERT INTO student VALUES(1, '椎名', 'Art', 'サークル');
INSERT INTO student VALUES(2, '四宮', 'Economics', '政治団体');
INSERT INTO student(name, society) VALUES('高木', '部活'); -- major is null
INSERT INTO student(name, society) VALUES('サクライ', '国際交流団体');
