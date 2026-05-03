-- Day 6: JOIN + GROUP BY

-- 1. ప్రతి grade కి average marks (using JOIN)
SELECT s.grade, AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON s.id = m.id
GROUP BY s.grade;

-- 2. ప్రతి grade లో ఎంత మంది students ఉన్నారు
SELECT s.grade, COUNT(*) AS total_students
FROM students s
JOIN marks m ON s.id = m.id
GROUP BY s.grade;

-- 3. ప్రతి grade లో highest marks
SELECT s.grade, MAX(m.marks) AS highest_marks
FROM students s
JOIN marks m ON s.id = m.id
GROUP BY s.grade;

-- 4. Average marks 75 కంటే ఎక్కువ ఉన్న grades
SELECT s.grade, AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON s.id = m.id
GROUP BY s.grade
HAVING AVG(m.marks) > 75;

-- 5. Top performing grade (highest average)
SELECT s.grade, AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON s.id = m.id
GROUP BY s.grade
ORDER BY avg_marks DESC
LIMIT 1;