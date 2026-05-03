-- Day 7: Window Functions

-- 1. Row number assign చేయడం
SELECT name, marks,
ROW_NUMBER() OVER (ORDER BY marks DESC) AS row_num
FROM students;

-- 2. Rank assign చేయడం
SELECT name, marks,
RANK() OVER (ORDER BY marks DESC) AS rank
FROM students;

-- 3. Dense rank (no gaps)
SELECT name, marks,
DENSE_RANK() OVER (ORDER BY marks DESC) AS dense_rank
FROM students;

-- 4. Grade-wise ranking
SELECT grade, name, marks,
RANK() OVER (PARTITION BY grade ORDER BY marks DESC) AS grade_rank
FROM students;