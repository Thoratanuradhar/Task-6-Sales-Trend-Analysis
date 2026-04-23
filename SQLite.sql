CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    amount FLOAT,
    product_id INTEGER
);
INSERT INTO online_sales VALUES
(1, '2024-01-10', 500, 101),
(2, '2024-01-15', 300, 102),
(3, '2024-02-05', 700, 103),
(4, '2024-02-20', 200, 101),
(5, '2024-03-12', 900, 104),
(6, '2024-03-25', 400, 102),
(7, '2024-04-02', 1000, 105),
(8, '2024-04-18', 600, 101);
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;