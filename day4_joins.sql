-- Day 4: JOINs

-- 1. INNER JOIN (matching data only)
SELECT students.name, marks.marks
FROM students
INNER JOIN marks
ON students.id = marks.id;

-- 2. LEFT JOIN (all students + matching marks)
SELECT students.name, marks.marks
FROM students
LEFT JOIN marks
ON students.id = marks.id;

-- 3. Students with marks > 75
SELECT students.name, marks.marks
FROM students
INNER JOIN marks
ON students.id = marks.id
WHERE marks.marks > 75;

-- 4. Order by marks (highest first)
SELECT students.name, marks.marks
FROM students
INNER JOIN marks
ON students.id = marks.id
ORDER BY marks.marks DESC;