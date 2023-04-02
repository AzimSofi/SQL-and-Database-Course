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

SELECT * FROM student; -- grab information from `student`

--UPDATE
UPDATE student
SET major = 'Bio' -- for major 'Biology' change to 'Bio'
WHERE major = 'Biology';

UPDATE student
SET name = 'Takagi'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Biology' OR major = 'Chemistry' OR major = 'Chem';

UPDATE student
SET name = 'Shiina', major = 'Arts'
WHERE student_id = 1;

UPDATE student
SET major = 'undecided';

--DELETE
DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Takagi' AND major = 'undecided';

DELETE FROM student; -- delete student table
