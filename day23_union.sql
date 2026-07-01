Table 1: students_2024

SQL

CREATE TABLE students_2024 (
    name VARCHAR(50)
);

INSERT INTO students_2024 VALUES
('Veshma'),
('Anu'),
('Ravi');
Table 2: students_2025
SQL
CREATE TABLE students_2025 (
    name VARCHAR(50)
);

INSERT INTO students_2025 VALUES
('Ravi'),
('John'),
('Sara');

1️⃣ UNION

Duplicate values ని remove చేస్తుంది.
SQL

SELECT name
FROM students_2024

UNION

SELECT name
FROM students_2025;

Output

Name
Veshma
Anu
Ravi
John
Sara

2️⃣ UNION ALL

Duplicates కూడా చూపిస్తుంది.
SQL

SELECT name
FROM students_2024

UNION ALL

SELECT name
FROM students_2025;
Output
Name
Veshma
Anu
Ravi
Ravi
John
Sara

3️⃣ INTERSECT (Concept)

రెండు tables లో common values.
SQL

SELECT name
FROM students_2024

INTERSECT

SELECT name
FROM students_2025;
Output:
Plain text
Ravi

4️⃣ EXCEPT (Concept)

మొదటి table లో మాత్రమే ఉన్న values.
SQL

SELECT name
FROM students_2024

EXCEPT

SELECT name
FROM students_2025;
Output:
Plain text
Veshma
Anu

🎯 Interview Questions
Q1: UNION మరియు UNION ALL మధ్య difference?
UNION → Duplicates remove చేస్తుంది.
UNION ALL → Duplicates కూడా return చేస్తుంది.
Q2: UNION వాడాలంటే condition ఏమిటి?
Answer: రెండు SELECT statements లో same number of columns మరియు compatible data types ఉండాలి.