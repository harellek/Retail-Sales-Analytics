-- 02_sales_analysis.sql
-- Total Revenue
SELECT ROUND(SUM(sales),2) AS total_revenue
FROM superstore

--Revenue by Category
SELECT category,
	   ROUND(SUM(sales),2) AS revenue_category
FROM superstore
GROUP BY category
ORDER BY revenue_category DESC;

--Revenue by Subcategory
SELECT
    sub_category,
    ROUND(SUM(sales),2) AS revenue
FROM superstore
GROUP BY sub_category
ORDER BY revenue DESC;

--Monthly Sales Trend
SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales),2) AS revenue
FROM superstore
GROUP BY month
ORDER BY month;