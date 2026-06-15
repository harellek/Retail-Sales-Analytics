-- 04_profitability_analysis.sql
--Most Profitable States
SELECT state,
    ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY state
ORDER BY profit DESC
LIMIT 10;

--Least Profitable States
SELECT state,
    ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY state
ORDER BY profit ASC
LIMIT 10;

-- Profit Margin by Category
SELECT category,
    ROUND(
        SUM(profit) /
        SUM(sales) * 100,
    2) AS profit_margin_pct
FROM superstore
GROUP BY category
ORDER BY profit_margin_pct DESC;
