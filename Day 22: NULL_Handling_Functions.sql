1️⃣ COALESCE()

SELECT
    name,
    COALESCE(phone, 'Not Available') AS phone_number
FROM students;

output 
Name
Phone Number
Veshma
9876543210
Anu
Not Available

2️⃣ IFNULL() (MySQL)

ఒక value NULL అయితే మరో value return చేస్తుంది.
SQL

SELECT
    name,
    IFNULL(phone, 'No Phone') AS phone
FROM students;

3️⃣ NULLIF()
రెండు values ఒకేలా ఉంటే NULL return చేస్తుంది.
SQL
SELECT NULLIF(100,100);
Output:
Plain text
NULL


🎯 Interview Questions
Q1: Difference between NULL and 0?
Answer:
NULL = Unknown / Missing value
0 = Actual numeric value
Q2: COALESCE() ఎందుకు ఉపయోగిస్తారు?
Answer: NULL values ఉన్నప్పుడు default value చూపించడానికి.