: A trigger is a database object that automatically executes when a specified event occurs.
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT
);

CREATE TABLE student_logs (
    log_message VARCHAR(100)
);

CREATE TRIGGER before_student_insert
BEFORE INSERT
ON students
FOR EACH ROW
SET NEW.name = UPPER(NEW.name);

--result:
INSERT INTO students VALUES (1,'Greshma',95);

CREATE TRIGGER after_student_insert
AFTER INSERT
ON students
FOR EACH ROW
INSERT INTO student_logs
VALUES ('New student added');

--result:
INSERT INTO students VALUES (2,'Anu',88);