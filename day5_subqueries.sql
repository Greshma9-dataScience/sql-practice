-- Day 5: Subqueries

-- 1. Average marks కంటే ఎక్కువ marks ఉన్న students
SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks) FROM students
);

-- 2. Highest marks ఉన్న student
SELECT name, marks
FROM students
WHERE marks = (
    SELECT MAX(marks) FROM students
);

-- 3. Lowest marks ఉన్న student
SELECT name, marks
FROM students
WHERE marks = (
    SELECT MIN(marks) FROM students
);

-- 4. Grade 'A' students average marks
SELECT AVG(marks)
FROM students
WHERE grade = 'A';