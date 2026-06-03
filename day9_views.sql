-- Create a View

CREATE VIEW top_students AS
SELECT name, marks
FROM students
WHERE marks > 80;

-- Use the View

SELECT * FROM top_students;