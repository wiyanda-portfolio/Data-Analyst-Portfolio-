E-Commerce SQL Data Analysis

# 1. Total Revenue
SELECT SUM(total_sales) AS total_revenue
FROM sales_dataset;

# 2. Best Selling Product
SELECT product, SUM(quantity) AS total_sold
FROM sales_dataset
GROUP BY product
ORDER BY total_sold DESC;

# 3. Sales by City
SELECT city, SUM(total_sales) AS total_sales
FROM sales_dataset
GROUP BY city
ORDER BY total_sales DESC;

# 4. Most Purchased Product
SELECT product, COUNT(product) AS purchase_count
FROM sales_dataset
GROUP BY product
ORDER BY purchase_count DESC;

# 5. Average Sales Per Product
SELECT product, AVG(total_sales) AS avg_sales
FROM sales_dataset
GROUP BY product
ORDER BY avg_sales DESC;
