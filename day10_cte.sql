-- Day 10: CTE (Common Table Expression)

WITH HighScorers AS (
    SELECT id, name, marks
    FROM students
    WHERE marks > 80
)

SELECT *
FROM HighScorers;

--instead if

SELECT *
FROM (
    SELECT id, name, marks
    FROM students
    WHERE marks > 80
) AS HighScorers;

WITH GradeAverage AS (
    SELECT grade, AVG(marks) AS avg_marks
    FROM students
    GROUP BY grade
)

SELECT *
FROM GradeAverage
WHERE avg_marks > 75;