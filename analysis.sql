-- Top Selling Products
SELECT product, SUM(quantity) AS total_quantity
FROM sales_dataset_large
GROUP BY product
ORDER BY total_quantity DESC;

-- Revenue by City
SELECT city, SUM(total_sales) AS revenue
FROM sales_dataset_large
GROUP BY city
ORDER BY revenue DESC;

-- Monthly Sales Trend
SELECT DATE_FORMAT(date,'%Y-%m') AS month,
SUM(total_sales) AS revenue
FROM sales_dataset_large
GROUP BY month
ORDER BY month;