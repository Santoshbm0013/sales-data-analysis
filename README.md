# 📊 Sales Data Analysis Using SQL

## 📌 Project Overview

This project analyzes retail sales data using **MySQL** to identify sales trends, product performance, customer spending patterns, and regional revenue.

The objective is to transform raw sales data into meaningful business insights using SQL queries and aggregations.

---

## 🎯 Business Questions

This analysis aims to answer the following questions:

1. What is the total revenue generated?
2. How many orders were placed?
3. How many total units were sold?
4. What is the average order value?
5. Which products generate the highest revenue?
6. Which product category performs best?
7. Which region generates the most revenue?
8. How does revenue change month by month?
9. Which customers spend the most?
10. What are the highest-value individual orders?

---

## 🛠️ Tools & Technologies

* **MySQL**
* **SQL**
* **MySQL Workbench**
* **Git**
* **GitHub**

---

## 🗂️ Dataset

The dataset contains fictional retail sales records with the following fields:

| Column          | Description               |
| --------------- | ------------------------- |
| `order_id`      | Unique order identifier   |
| `order_date`    | Date of the order         |
| `customer_name` | Customer name             |
| `product`       | Product purchased         |
| `category`      | Product category          |
| `quantity`      | Number of units purchased |
| `price`         | Price per unit            |
| `region`        | Sales region              |

The dataset contains **20 sales records**.

---

## 🔍 SQL Techniques Used

The project demonstrates the following SQL concepts:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`
* `COUNT()`
* `SUM()`
* `AVG()`
* Aggregate calculations
* Calculated columns
* Date functions
* Revenue calculations
* Sorting and ranking results

### Example Revenue Calculation

```sql
SELECT
    product,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;
```

---

## 📈 Key Metrics

The analysis calculates:

* **Total Revenue**
* **Total Orders**
* **Total Units Sold**
* **Average Order Value**
* **Revenue by Product**
* **Revenue by Category**
* **Revenue by Region**
* **Monthly Revenue**
* **Customer Spending**
* **Top 5 Orders**

> Results shown here should be updated with the final values from the SQL queries.

| KPI                 |       Result |
| ------------------- | -----------: |
| Total Orders        |           20 |
| Total Units Sold    | _ |
| Total Revenue       | _ |
| Average Order Value |_ |

---

## 💡 Business Insights

The SQL analysis can be used to identify:

* Products contributing the most revenue
* Categories with stronger sales performance
* Regions generating higher revenue
* High-value customers
* Monthly sales patterns
* High-value individual transactions

These insights can help businesses understand sales performance and identify areas for further investigation.

---

## 📸 Screenshots

Screenshots of the SQL analysis and results are included below.

### Database & Table

![Sales Database](screenshots/database.png)

### Overall Business Metrics

![Business Metrics](screenshots/business-metrics.png)

### Revenue by Product

![Revenue by Product](screenshots/revenue-by-product.png)

### Revenue by Region

![Revenue by Region](screenshots/revenue-by-region.png)

---

## 📁 Project Structure

```text
Sales-Data-Analysis/
│
├── data/
│   └── Sales.csv
│
├── sql/
│   └── sales_analysis.sql
│
├── screenshots/
│   ├── database.png
│   ├── business-metrics.png
│   ├── revenue-by-product.png
│   └── revenue-by-region.png
│
└── README.md
```

---

## 🚀 How to Run the Project

### 1. Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/sales-data-analysis.git
```

### 2. Open MySQL Workbench

Create the database:

```sql
CREATE DATABASE sales_analysis;
USE sales_analysis;
```

### 3. Create the `sales` table

Run the table creation query from the SQL file.

### 4. Import the dataset

Import `data/Sales.csv` into the `sales` table.

### 5. Run the analysis

Open:

```text
sql/sales_analysis.sql
```

Run the queries to reproduce the analysis.

---

## 📚 Learning Outcomes

Through this project, I practiced:

* Writing SQL queries for business analysis
* Working with structured sales data
* Using aggregate functions
* Grouping and sorting analytical results
* Calculating business KPIs
* Performing basic exploratory data analysis
* Using Git and GitHub for project version control

---

## 🔮 Future Improvements

Possible future improvements include:

* Adding a larger real-world dataset
* Creating a Power BI dashboard
* Adding customer segmentation
* Performing month-over-month growth analysis
* Adding advanced SQL concepts such as CTEs and window functions
* Automating the analysis pipeline

---

## 👤 Author

**Santosh Pradhan**

GitHub: `https://github.com/Santoshbm0013`
