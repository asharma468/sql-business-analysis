-- ================================
-- BASIC DATA OVERVIEW
-- ================================

-- View all records
SELECT *
FROM sales;

-- Total number of orders
SELECT COUNT(*) AS total_orders
FROM sales;

-- Total revenue
SELECT SUM(price * quantity) AS total_revenue
FROM sales;
