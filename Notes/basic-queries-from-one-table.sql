DESCRIBE student; -- displaying table
DROP TABLE student; -- remove table
CREATE TABLE student(    
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) CHARACTER SET utf8mb4 NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY (student_id)
);

INSERT INTO student(name,major) VALUES('Jack', 'Biology');
INSERT INTO student(name,major) VALUES('Kate', 'Sociology');
INSERT INTO student(name,major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name,major) VALUES('Jack', 'Biology');
INSERT INTO student(name,major) VALUES('Mike', 'Computer Science');

--QUEURY

--SELECT: get information
--asterik: Every column
SELECT * 
FROM student;

-- only get name column
SELECT name
FROM student;

-- 2 column, (name, major)
SELECT name, major
FROM student;

-- Alphabetical order
SELECT student.name, student.major -- a better practice
FROM student
ORDER BY name ASC; -- or replace ASC to DESC

-- order with column that is not sellected
SELECT student.name, student.major
FROM student
ORDER BY student_id DESC;

-- if major is the same, order by id asc
SELECT *
FROM student
ORDER BY student.major, student.student_id ASC;

-- limits the result by 2
SELECT *
FROM student
ORDER BY student.student_id DESC
LIMIT 2;

-- conditional
SELECT *
FROM student
WHERE student.major = 'biology' OR student.name = 'Kate';

-- more conditional
SELECT *
FROM student
WHERE student.major <> 'biology'; -- not equal to

SELECT *
FROM student
WHERE student.student_id >= '3' AND student.major <> 'biology';

-- `IN` more specific 
SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike') OR student.student_id = 1;
