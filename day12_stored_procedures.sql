/*Instead of writing same query again and again → create procedure once → call it anytime.*/

CREATE PROCEDURE GetStudents
AS
BEGIN
    SELECT *
    FROM students;
END;

--Run

EXEC GetStudents;