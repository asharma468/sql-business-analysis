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

