CREATE TABLE Sales (
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price INT,
    order_date DATE

INSERT INTO Sales VALUES
(1, 'Asha', 'Laptop', 'Electronics', 1, 55000, '2024-01-12'),
(2, 'Rohan', 'Mouse', 'Electronics', 2, 800, '2024-01-15'),
(3, 'Priya', 'Chair', 'Furniture', 1, 3500, '2024-02-05'),
(4, 'Asha', 'Desk', 'Furniture', 1, 7000, '2024-02-06'),
(5, 'Rohan', 'Phone', 'Electronics', 1, 30000, '2024-03-02'),
(6, 'Meena', 'Bookshelf', 'Furniture', 2, 4000, '2024-03-10'),
(7, 'Priya', 'Headphones', 'Electronics', 1, 2500, '2024-04-01'),
(8, 'Asha', 'Sofa', 'Furniture', 1, 15000, '2024-04-15');

1. Total sales per order
SELECT order_id, customer_name, product, quantity * price AS total_amount
FROM Sales;

2. Total revenue per customer
SELECT customer_name, SUM(quantity * price) AS total_spent
FROM Sales GROUP BY customer_name;

3. Number of products per category
SELECT category, COUNT(*) AS num_products
FROM Sales GROUP BY category;

4. Most expensive product purchased
SELECT product, MAX(price) AS max_price
FROM Sales;

5. Top customer by total spending
SELECT customer_name, SUM(quantity * price) AS total_spent
FROM Sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 1;
