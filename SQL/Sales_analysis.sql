-- ============================================
-- SALES DATA ANALYSIS
-- Author: Your Name
-- Database: sales_analysis
-- ============================================

USE sales_analysis;

-- 1. Overall Business Metrics
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_units_sold,
    SUM(quantity * price) AS total_revenue,
    AVG(quantity * price) AS average_order_value
FROM sales;


CREATE DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    region VARCHAR(50)
);

SHOW TABLES;

INSERT INTO sales
(order_id, order_date, customer_name, product, category, quantity, price, region)
VALUES
(1001, '2026-01-05', 'Rahul', 'Laptop', 'Electronics', 2, 55000, 'East'),
(1002, '2026-01-06', 'Priya', 'Chair', 'Furniture', 4, 3500, 'North'),
(1003, '2026-01-08', 'Aman', 'Headphones', 'Electronics', 3, 2500, 'South'),
(1004, '2026-01-10', 'Sneha', 'Desk', 'Furniture', 2, 7000, 'West'),
(1005, '2026-01-12', 'Rohan', 'Keyboard', 'Electronics', 5, 1500, 'East');

SELECT * FROM sales;

SELECT
    order_id,
    product,
    quantity,
    price,
    quantity * price AS revenue
FROM sales;

SELECT
    SUM(quantity * price) AS total_revenue
FROM sales;

SELECT
    SUM(quantity) AS total_units_sold
FROM sales;

SELECT
    COUNT(order_id) AS total_orders
FROM sales;

SELECT
    AVG(quantity * price) AS average_order_value
FROM sales;

SELECT
    product,
    SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

SELECT
    region,
    SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

TRUNCATE TABLE sales;

SET GLOBAL local_infile = 1;

SHOW GLOBAL VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE 'C:/Users/sp202/OneDrive/Desktop/Sales-Data-Analysis/Data/Sales.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT COUNT(*) AS total_records
FROM sales;

SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_units_sold,
    SUM(quantity * price) AS total_revenue,
    AVG(quantity * price) AS average_order_value
FROM sales;

SELECT
    product,
    SUM(quantity) AS units_sold,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

SELECT
    category,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;

SELECT
    region,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

SELECT
    MONTH(order_date) AS month,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;

SELECT
    customer_name,
    SUM(quantity * price) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC;

SELECT
    order_id,
    customer_name,
    product,
    quantity,
    quantity * price AS order_value
FROM sales
ORDER BY order_value DESC
LIMIT 5;

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;



