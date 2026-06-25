


---

📂 File Name

day16_window_functions


---

1️⃣ ROW_NUMBER()

ప్రతి row కి unique number ఇస్తుంది.

SELECT
    name,
    salary,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;

Output Example

Name	Salary	Row_Num

Ravi	90000	1
Anu	85000	2
Veshma	85000	3



---

2️⃣ RANK()

Same salary ఉంటే same rank ఇస్తుంది.

SELECT
    name,
    salary,
    RANK() OVER(ORDER BY salary DESC) AS rank_no
FROM employees;

Output

Name	Salary	Rank

Ravi	90000	1
Anu	85000	2
Veshma	85000	2
John	80000	4


Notice: Rank 3 skip అయింది.


---

3️⃣ DENSE_RANK()

SELECT
    name,
    salary,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS rank_no
FROM employees;

Output

Name	Salary	Rank

Ravi	90000	1
Anu	85000	2
Veshma	85000	2
John	80000	3


No gaps.


---

4️⃣ Find Second Highest Salary

SELECT *
FROM (
    SELECT
        name,
        salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk = 2;

🔥 Very common interview question.


---

🏆 Practice Challenge

Find Top 3 highest paid employees.

SELECT *
FROM (
    SELECT
        name,
        salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk <= 3;


---
