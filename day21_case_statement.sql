SELECT
    name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'A Grade'
        WHEN marks >= 75 THEN 'B Grade'
        WHEN marks >= 50 THEN 'C Grade'
        ELSE 'Fail'
    END AS grade
FROM students;


📊 Output
Name
Marks
Grade
Veshma
95
A Grade
Anu
82
B Grade
Ravi
68
C Grade
John
40
Fail



💻 Example 2: Employee Salary Category
SQL

SELECT
    name,
    salary,
    CASE
        WHEN salary >= 80000 THEN 'High Salary'
        WHEN salary >= 50000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees;

🎯 Interview Questions
Q1: CASE statement ఎందుకు ఉపయోగిస్తారు?
Answer: SQL query లో conditions ఆధారంగా different values return చేయడానికి.
Q2: CASE statement ని ఎక్కడ ఉపయోగించవచ్చు?
SELECT
ORDER BY
GROUP BY
UPDATE