📝 Question 1: Second Highest Salary
SQL

SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

📝 Question 2: Duplicate Records
SQL

SELECT name, COUNT(*)
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;

📝 Question 3: Top 3 Highest Salaries
SQL

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

📝 Question 4: Employees with Salary Above Average
SQL

SELECT *
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);

📝 Question 5: INNER JOIN
SQL

SELECT e.name,
d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;