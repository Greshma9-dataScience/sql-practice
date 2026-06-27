create table 

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    manager_id INT
);

💻 Insert Sample DataINSERT INTO employees VALUES

(1, 'CEO', NULL),
(2, 'Manager A', 1),
(3, 'Manager B', 1),
(4, 'Employee 1', 2),
(5, 'Employee 2', 2),
(6, 'Employee 3', 3);


WITH RECURSIVE EmployeeHierarchy AS (

    SELECT
        id,
        name,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT
        e.id,
        e.name,
        e.manager_id,
        eh.level + 1
    FROM employees e
    JOIN EmployeeHierarchy eh
        ON e.manager_id = eh.id
)

SELECT * FROM EmployeeHierarchy;

📊 Output

ID
Name
Manager ID
Level
1
CEO
NULL
1
2
Manager A
1
2
3
Manager B
1
2
4
Employee 1
2
3
5
Employee 2
2
3
6
Employee 3
3
3