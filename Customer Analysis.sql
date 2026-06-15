-- 03_customer_analysis.sql
-- Top Customers
SELECT
    customer_name,
    ROUND(SUM(sales),2) AS revenue
FROM superstore
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;

--Average Order Value
SELECT
    ROUND(
        SUM(sales) /
        COUNT(DISTINCT order_id),
    2) AS avg_order_value
FROM superstore;

--Customer Segment Revenue
SELECT
    segment,
    ROUND(SUM(sales),2) AS revenue
FROM superstore
GROUP BY segment
ORDER BY revenue DESC;
