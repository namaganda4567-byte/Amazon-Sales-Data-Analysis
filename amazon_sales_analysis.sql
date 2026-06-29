/*
PROJECT: Amazon Sales Commercial Analysis
AUTHOR: Rachael Namaganda
DATE: June 2026
This script explores customer retention and product performance metrics.
*/

SELECT * FROM amazon_sales_dataset LIMIT 10;

USE amazon_p;
-- identifying high-value customer 
SELECT 
customer_id, 
COUNT(order_id) AS Total_Orders, 
SUM(total_sales) AS Total_Revenue,
AVG(total_sales) AS Avg_Order_Value
FROM amazon_sales_dataset
GROUP BY customer_id
ORDER BY total_revenue DESC 
LIMIT 10;

-- identifying which product sectors generate the highest revenue volume.
SELECT
category, sub_category,
SUM(total_sales) AS Gross_Sales,
COUNT(order_id) AS units_sold
FROM amazon_sales_dataset
GROUP BY category, sub_category
ORDER BY Gross_Sales DESC;
