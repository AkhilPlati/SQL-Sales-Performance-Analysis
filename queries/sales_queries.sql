-- Total Sales Revenue
SELECT SUM(sales_amount) AS total_revenue
FROM sales_data;

-- Monthly Sales Trend
SELECT month, SUM(sales_amount) AS revenue
FROM sales_data
GROUP BY month
ORDER BY revenue DESC;

-- Top Selling Products
SELECT product_name, SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 10;

-- Regional Sales Analysis
SELECT region, SUM(sales_amount) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;

-- Customer Purchase Analysis
SELECT customer_name, SUM(sales_amount) AS total_spent
FROM sales_data
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;
