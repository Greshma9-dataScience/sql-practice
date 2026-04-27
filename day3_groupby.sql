-- Day 3: GROUP BY + Aggregate Functions

-- 1. ప్రతి grade లో ఎంత మంది students ఉన్నారు
SELECT grade, COUNT(*) AS total_students
FROM students
GROUP BY grade;

-- 2. ప్రతి grade కి average marks
SELECT grade, AVG(marks) AS avg_marks
FROM students
GROUP BY grade;

-- 3. ప్రతి grade కి total marks
SELECT grade, SUM(marks) AS total_marks
FROM students
GROUP BY grade;

-- 4. ప్రతి grade లో highest marks
SELECT grade, MAX(marks) AS highest_marks
FROM students
GROUP BY grade;

-- 5. ప్రతి grade లో lowest marks
SELECT grade, MIN(marks) AS lowest_marks
FROM students
GROUP BY grade;