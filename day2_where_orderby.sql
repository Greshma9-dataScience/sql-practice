-- Day 2: WHERE + ORDER BY

-- 1. Marks 70 కంటే ఎక్కువ ఉన్న students
SELECT * FROM students
WHERE marks > 70;

-- 2. Grade = 'A' ఉన్న students
SELECT * FROM students
WHERE grade = 'A';

-- 3. Marks descending order లో (high to low)
SELECT * FROM students
ORDER BY marks DESC;

-- 4. Marks ascending order లో (low to high)
SELECT * FROM students
ORDER BY marks ASC;

-- 5. 80 కంటే ఎక్కువ marks ఉన్నవారిని name మాత్రమే చూపించు
SELECT name FROM students
WHERE marks > 80;

-- 6. Top 3 students (highest marks)
SELECT * FROM students
ORDER BY marks DESC
LIMIT 3;
