--06_join_analysis.sql
--summary table
CREATE TABLE category_summary AS
SELECT category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY category;

--Category Profitability
SELECT
    s.category,
    cs.total_sales,
    cs.total_profit,
    ROUND(
        cs.total_profit /
        cs.total_sales * 100,
    2) AS profit_margin
FROM superstore s
INNER JOIN category_summary cs
    ON s.category = cs.category
LIMIT 20;


--Customer Revenue
CREATE TABLE customer_summary AS
SELECT
    customer_id,
    customer_name,
    segment,
    SUM(sales) AS total_revenue
FROM superstore
GROUP BY
    customer_id,
    customer_name,
    segment;

--Join back to transactions
SELECT
    s.order_id,
    s.customer_name,
    cs.segment,
    cs.total_revenue
FROM superstore s
INNER JOIN customer_summary cs
    ON s.customer_id = cs.customer_id
LIMIT 20;

--Top Customers by Region
SELECT
    s.region,
    cs.customer_name,
    cs.total_revenue
FROM superstore s
INNER JOIN customer_summary cs
    ON s.customer_id = cs.customer_id
ORDER BY cs.total_revenue DESC;

--Join three tables
SELECT
    s.order_id,
    cs.customer_name,
    ps.product_name,
    ps.total_sales
FROM superstore s
INNER JOIN customer_summary cs
    ON s.customer_id = cs.customer_id
INNER JOIN product_summary ps
    ON s.product_id = ps.product_id
LIMIT 50;

