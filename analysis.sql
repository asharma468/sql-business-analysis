-- View all data
SELECT * FROM sales;

-- Total revenue
SELECT SUM(price * quantity) AS total_revenue FROM sales;

-- Revenue by product
SELECT product, SUM(price * quantity) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

