CREATE TABLE sales (
    id INT,
    month VARCHAR(20),
    sales INT
);

INSERT INTO sales VALUES
(1,'January',10000),
(2,'February',12000),
(3,'March',15000),
(4,'April',13000);

-- lead():-

SELECT
    month,
    sales,
    LEAD(sales) OVER(ORDER BY id) AS next_month_sales
FROM sales;

--lag():-

SELECT
    month,
    sales,
    LAG(sales) OVER(ORDER BY id) AS previous_month_sales
FROM sales;