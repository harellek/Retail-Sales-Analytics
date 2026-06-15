-- 01_data_exploration.sql

--Number of records
SELECT COUNT (*)
FROM superstore;

--Unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM superstore;

-- Number of products
SELECT COUNT(DISTINCT product_id) AS num_products
FROM superstore;

--Date Range
SELECT MIN(order_date) AS first_date,
	   MAX(order_date) AS first_date
FROM superstore;

--Orders by Region
SELECT region,
	   COUNT(*) AS total_orders
FROM superstore
GROUP BY region
ORDER BY total_orders DESC;