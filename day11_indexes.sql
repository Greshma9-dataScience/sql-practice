-- Create Index

CREATE INDEX idx_name
ON students(name);

-- Search Query

SELECT *
FROM students
WHERE name = 'Veshma';

--Unique Index
CREATE UNIQUE INDEX idx_email
ON employees(email);

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    email VARCHAR(100)
);

CREATE INDEX idx_employee_name
ON employees(name);