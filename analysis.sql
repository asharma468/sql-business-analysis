-- ================================
-- BASIC DATA OVERVIEW
-- ================================

-- Inspect raw table
SELECT *
FROM sales;

-- Total number of orders
SELECT COUNT(*) AS total_orders
FROM sales;

-- Total revenue
SELECT SUM(price * quantity) AS total_revenue
FROM sales;


-- ================================
-- PRODUCT PERFORMANCE
-- ================================

-- Revenue by product
SELECT
  product,
  SUM(price * quantity) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

-- Revenue by category
SELECT
  category,
  SUM(price * quantity) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;

-- Best-selling product (by revenue)
SELECT
  product,
  SUM(price * quantity) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 1;


-- ================================
-- CUSTOMER ANALYSIS
-- ================================

-- Total spend by customer
SELECT
  customer_id,
  SUM(price * quantity) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Order count per customer
SELECT
  customer_id,
  COUNT(order_id) AS order_count
FROM sales
GROUP BY customer_id
ORDER BY order_count DESC;

-- Highest-value customer (LTV)
SELECT
  customer_id,
  SUM(price * quantity) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;

