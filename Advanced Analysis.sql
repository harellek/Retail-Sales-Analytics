-- 05_advanced_analysis.sql
-- Top 10 Customers Using Window Functions
SELECT customer_name,
    ROUND(SUM(sales),2) AS revenue,
    RANK() OVER(
        ORDER BY SUM(sales) DESC
    ) AS customer_rank
FROM superstore
GROUP BY customer_name;

--Regional Ranking
SELECT region,
    ROUND(SUM(sales),2) AS revenue,
    DENSE_RANK() OVER(
        ORDER BY SUM(sales) DESC
    ) AS rank
FROM superstore
GROUP BY region;