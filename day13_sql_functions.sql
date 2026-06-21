SELECT UPPER('veshma');
SELECT LOWER('VESHMA');
SELECT LENGTH('DataScience');
SELECT ROUND(85.678, 2);
SELECT ABS(-25);
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();

SELECT
    name,
    UPPER(name) AS student_name,
    ROUND(marks, 0) AS rounded_marks
FROM students;