-- ================================
-- CUSTOMER ANALYSIS
-- ================================

-- Top customers by total spend
SELECT
  customer_id,
  SUM(price * quantity) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Number of orders per customer
SELECT
  customer_id,
  COUNT(order_id) AS order_count
FROM sales
GROUP BY customer_id
ORDER BY order_count DESC;

