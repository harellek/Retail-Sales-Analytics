--07_business_insights.sql

-- Most Profitable Category
SELECT category,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY category
ORDER BY profit DESC;

-- Insight: Technology is the most profitable category.

-- Least Profitable Subcategory

SELECT sub_category,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY sub_category
ORDER BY profit ASC;

-- Insight: Tables generate negative profit and may require pricing review.