-- Day 8: SQL Mini Project (E-commerce Analysis)

-- 1. Total sales
SELECT SUM(amount) AS total_sales
FROM orders;

-- 2. Total orders count
SELECT COUNT(*) AS total_orders
FROM orders;

-- 3. Top 3 customers (highest spending)
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;

-- 4. Monthly revenue
SELECT MONTH(order_date) AS month, SUM(amount) AS revenue
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;

-- 5. Average order value
SELECT AVG(amount) AS avg_order_value
FROM orders;

-- 6. Customers who spent more than average
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
HAVING SUM(o.amount) > (
    SELECT AVG(amount) FROM orders
);