/*Instead of writing same query again and again → create procedure once → call it anytime.*/

CREATE PROCEDURE GetStudents
AS
BEGIN
    SELECT *
    FROM students;
END;

--Run

EXEC GetStudents;

ex:

--Employee table:

--SQL

CREATE TABLE employees(
id INT,
name VARCHAR(50),
salary INT
);

⚡ Advantages
✅ Code reuse
✅ Faster execution
✅ Security improve
✅ Easy maintenance
--Procedure:

--SQL

CREATE PROCEDURE HighSalaryEmployees
AS
BEGIN
    SELECT *
    FROM employees
    WHERE salary > 50000;
END;

--Call:

--SQL

EXEC HighSalaryEmployees;