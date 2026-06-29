

🧠 What is Normalization?

Normalization అంటే database ని organize చేయడం, తద్వారా:

Duplicate data తగ్గుతుంది

Data consistency పెరుగుతుంది

Updates సులభంగా ఉంటాయి



---

1️⃣ First Normal Form (1NF)

❌ Bad Table

Student	Courses

Veshma	SQL, Python


ఒక cell లో multiple values ఉన్నాయి.

✅ Good Table

Student	Course

Veshma	SQL
Veshma	Python


Rule: ప్రతి cell లో ఒక value మాత్రమే ఉండాలి.


---

2️⃣ Second Normal Form (2NF)

Student మరియు Course details ఒకే table లో కాకుండా విడిగా ఉంచాలి.

Students Table

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

Courses Table

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

Student_Courses Table

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
);


---

3️⃣ Third Normal Form (3NF)

Department details ని employee table లో repeat చేయకుండా separate table లో ఉంచాలి.

Employees

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

Departments

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


---

🎯 Interview Questions

Q1: Why do we use Normalization?

Answer:

Reduce duplicate data

Improve consistency

Better database design


Q2: Difference between 1NF, 2NF, and 3NF?

1NF: One value per cell

2NF: Remove partial dependency

3NF: Remove transitive dependency



---

