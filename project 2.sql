
						       -- Question 1:Database Creation & Schema Design
-- Create a database called `sales_data`
CREATE DATABASE sales_data;

-- products: `product_id` (INT, PRIMARY KEY), `product_name`, `category`, `price`.
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);
-- customers: `customer_id` (INT, PRIMARY KEY), `first_name`, `last_name`, `email`,`phone_number`.
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);
-- sales: `sale_id` (INT, PRIMARY KEY), `product_id` (INT), `customer_id` (INT), `sale_date`,`quantity`, `total_amount`
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    sale_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2)
);
-- payments: `payment_id` (INT, PRIMARY KEY), `sale_id` (INT), `payment_method`,`payment_date`, `amount_paid`.
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    sale_id INT,
    payment_method VARCHAR(50),
    payment_date DATE,
    amount_paid DECIMAL(10, 2)
    );
    
    			-- QUESTION 2: 2. Data Insertion
-- Insert at least 10 products into the `products` table.
INSERT INTO products (product_id, product_name, category, price) VALUES
(1,'prada','fashion','6000.00'),
(2,'mercedes_benz','automobile','8000.00'),
(3,'burberry','fashion','4000.00'),
(4,'hennessy','alcohol','5500.00'),
(5,'glock','firearm','9000.00'),
(6,'coca_cola','beverage','4500.00'),
(7,'cartier','jewelry','8500.00'),
(8,'ford','automobile','7500.00'),
(9,'rolex','jewelry','9000.00'),
(10,'gucci','fashion','6500.00');

-- Insert at least 40 customers into the `customers` table.
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number) VALUES
(001,'gerald','okafor','gerald78@gmail.com','0806947898'),
(002,'gale','bolt','galebolt600@gmail.com','07056790534'),
(003,'mark','ken','mark2001@icloud.com','08075423598'),
(004,'frank','bob','bobfrank@yahoo.com','090567320786'),
(005,'zion','fred','fredzion@icloud.com','07004871937'),
(006,'bale','bull','balebull@gmail.com','08056478391'),
(007,'whale','green','whalegreen300@gamil.com','07073610376'),
(008,'chidimma','ford','chidimmaford09@icloud.com','07065436789'),
(009,'lan','books','lanbooks@gmail.com','09087690865'),
(010,'meek','mill','meekmill90@yahoo.com','08075645376'),
(011,'jamie','fraser','jamiefraser@yahoo.com','09087987678'),
(012,'mary','anna','maryanna00@gmail.com','09087987678'),
(013,'clara','frost','clarafrost@icloud.com','08078987654'),
(014,'elon','musk','elonmusk@yahoo.com','07064534567'),
(015,'master','white','masterwhite@gmail.com','09067543216'),
(016,'gucci','killer','guccikiller@gmail.com','08076543521'),
(017,'barak','obama','barakobama001@icloud.com','09087654325'),
(018,'chisom','free','freechisom@gmail.com','08076545357'),
(019,'queen','mill','queenmill@gmail.com','09078654678'),
(020,'rose','lick','roselick@gmail.com','070678990789'),
(021,'nike','boy','nikeboy@icloud.com','08079698767'),
(022,'brand','little','brandlittle@yahoo.com','081756432318'),
(023,'kelly','ray','kellyray@yahoo.com','09086754378'),
(024,'rita','why','ritawhy@gmail.com','09087654789'),
(025,'emeka','dance','emekadance@icloud.com','08198178178'),
(026,'peace','heart','peaceheart@gmail.com','090876543212'),
(027,'range','rover','rangerover@yahoo.com','08076854316'),
(028,'paul','will','paulwill@yahoo.com','090787656432'),
(029,'jane','raw','janeraw@gmail.com','08078965432'),
(030,'brave','jeff','bravejeff@yahoo.com','0907456261'),
(031, 'Elijah', 'Carter', 'elijahcarter@gmail.com', '09038290187'),
(032, 'Amelia', 'Barnes', 'ameliaBarnes@gmail.com', '09069504932'),
(033, 'Aiden', 'Wright', 'aidenwright@gmail.com', '08183698833'),
(034, 'Evelyn', 'Scott', 'evelynscott@gmail.com', '08129304852'),
(035, 'Lucas', 'Torres', 'lucasTorres@gmail.com', '090294059642'),
(036, 'Harper', 'Kelly', 'harperkelly@gmail.com', '08059345067'),
(037, 'Logan', 'Bennett', 'loganbennett@gmail.com', '08096509310'),
(038, 'Abigail', 'Wood', 'abigailwood@gmail.com', '09019238704'),
(039, 'Jack', 'Reynolds', 'jackreynolds@gmail.com', '08049201953'),
(040, 'Avery', 'Flores', 'averyflores@gmail.com', '09150697402');

-- Insert at least 20 records into the `sales` table, making sure some customers buy multiple products.
INSERT INTO sales(sale_id, product_id, customer_id, sale_date, quantity, total_amount) VALUES
(1, 1, 11, '2024-10-15', 1, 900000.00),
(2, 2, 12, '2024-10-16', 2, 2000000.00),
(3, 3, 13, '2024-10-17', 3, 57000.00),
(4, 4, 14, '2024-10-18', 1, 30000.00),
(5, 5, 15, '2024-10-19', 2, 12000.00),
(6, 6, 16, '2024-10-20', 1, 50000.00),
(7, 7, 17, '2024-10-21', 1, 100000.00),
(8, 8, 18, '2024-10-22', 2, 30000.00),
(9, 9, 19, '2024-10-23', 1, 10000.00),
(10, 10, 20, '2024-10-24', 2, 100000.00),
(11, 1, 11, '2024-10-25', 2, 1800000.00), 
(12, 2, 12, '2024-10-26', 1, 1000000.00),
(13, 3, 13, '2024-10-27', 5, 95000.00), 
(14, 4, 14, '2024-10-28', 3, 90000.00),
(15, 5, 15, '2024-10-29', 1, 6000.00),
(16, 6, 16, '2024-10-30', 2, 10000.00),
(17, 7, 17, '2024-10-31', 3, 300000.00),
(18, 8, 18, '2024-11-01', 1, 15000.00),
(19, 9, 19, '2024-11-02', 2, 20000.00),
(20, 10, 20, '2024-11-03', 1, 50000.00);

-- Insert payment records corresponding to the sales, with varying amounts and dates.
INSERT INTO payments (payment_id, sale_id, payment_method, payment_date, amount_paid) VALUES
(1, 1, 'Credit Card', '2024-10-20', 90000.00),
(2, 2, 'Cash', '2024-10-21', 1000000.00),
(3, 3, 'Debit Card', '2024-10-22', 19000.00),
(4, 4, 'Check', '2024-10-23', 30000.00),
(5, 5, 'Credit Card', '2024-10-24', 6000.00),
(6, 6, 'Cash', '2024-10-25', 5000.00),
(7, 7, 'Debit Card', '2024-10-26', 100000.00),
(8, 8, 'Check', '2024-10-27', 15000.00),
(9, 9, 'Credit Card', '2024-10-28', 10000.00),
(10, 10, 'Cash', '2024-10-29', 50000.00),
(11, 11, 'Credit Card', '2024-10-30', 3000000.00),
(12, 12, 'Debit Card', '2024-10-31', 50000.00),
(13, 13, 'Check', '2024-11-01', 500000.00),
(14, 14, 'Credit Card', '2024-11-02', 20000.00),
(15, 15, 'Cash', '2024-11-03', 80000.00),
(16, 16, 'Debit Card', '2024-11-04', 25000.00),
(17, 17, 'Check', '2024-11-05', 300000.00),
(18, 18, 'Credit Card', '2024-11-06', 14000.00),
(19, 19, 'Cash', '2024-11-07', 200000.00),
(20, 20, 'Debit Card', '2024-11-08', 38000.00);

              -- QUESTION 3: Analysis Using SQL Concepts
	--  GROUP BY:
-- Write a query to calculate the total quantity sold for each product category
SELECT p.category, SUM(s.quantity) AS total_quantity_sold
FROM products p
INNER JOIN sales s 
ON p.product_id = s.product_id
GROUP BY p.category;

-- Write a query to count the number of sales for each customer.
SELECT c.customer_id, COUNT(s.sale_id) AS number_of_sales
FROM customers c
INNER JOIN sales s 
ON c.customer_id = s.customer_id
GROUP BY c.customer_id;

--  Write a query to find the total revenue generated by each payment method
SELECT p.payment_method, SUM(p.amount_paid) AS total_revenue
FROM payments p
GROUP BY p.payment_method;


    -- ORDER BY:                      
-- Write a query to retrieve a list of products, sorted by price in descending order.
SELECT product_id, product_name, price
FROM products
ORDER BY price DESC;

-- Write a query to get the sales records ordered by `sale_date` in ascending order.
SELECT sale_id, product_id, customer_id, sale_date, quantity, total_amount
FROM sales
ORDER BY sale_date ASC;

--  Write a query to display customers sorted by their last name alphabetically.
SELECT customer_id, first_name, last_name, email, phone_number
FROM customers
ORDER BY last_name ASC;

 -- HAVING CLAUSE:
-- Write a query to find products that have been sold more than 5 times, using `HAVING` with the`GROUP BY` statement.
SELECT p.product_id, p.product_name, SUM(s.quantity) AS total_quantity_sold
FROM products p
INNER JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity) >5;

--  Write a query to list customers who have made total purchases (sum of `total_amount`) exceeding $100.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM customers c
INNER JOIN sales s 
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > 100000;

-- Write a query to find categories with a total sales revenue greater than $500
SELECT p.category, SUM(s.total_amount) AS total_revenue
FROM products p
INNER JOIN sales s ON p.product_id = s.product_id
GROUP BY p.category
HAVING SUM(s.total_amount) > 600000;


-- LIMIT CLAUSE:
-- Write a query to display the top 5 most expensive products.
SELECT product_id, product_name, price
FROM products
ORDER BY price DESC
LIMIT 5;

-- Write a query to display the 3 most recent sales.
SELECT sale_id, product_id, customer_id, sale_date, quantity, total_amount
FROM sales
ORDER BY sale_date DESC
LIMIT 3;

-- Write a query to list the first 5 customers who made purchases.
SELECT DISTINCT c.customer_id, c.first_name, c.last_name, s.sale_date
FROM customers c
INNER JOIN sales s 
ON c.customer_id = s.customer_id
ORDER BY s.sale_date ASC
LIMIT 5;

-- ALIASING:

-- Write a query to calculate the total revenue (sum of `total_amount`) for each product and use an alias `total_revenue` for the calculated field.
SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_revenue
FROM products p
INNER JOIN sales s 
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;

-- Write a query to display each customer's full name as `customer_name` by concatenating `first_name` and `last_name`.
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM customers c;

-- Use aliasing to create a column called `sales_value` representing the product of `price` and`quantity` for each sale.
SELECT s.sale_id, s.product_id, s.quantity, p.price, (s.quantity * p.price) AS sales_value
FROM sales s
INNER JOIN products p
 ON s.product_id = p.product_id;

    -- String Functions: 
 -- Write a query to display the product names in uppercase.
 SELECT UPPER(product_name) AS product_name_uppercase
FROM products;

-- Write a query to extract the domain from the `email` field of each customer.
SELECT SUBSTRING_INDEX(email, '@', -1) AS email_domain
FROM customers;

-- Write a query to display the first three characters of each customer's `last_name`.
SELECT LEFT(last_name, 3) AS first_3_chars
FROM customers;

-- Write a query that trims extra spaces around product names and displays them.
SELECT TRIM(product_name) AS trimmed_product_name
FROM products;

      -- Aggregate Functions:
-- Write a query to calculate the average price of all products.
SELECT AVG(price) AS average_price
FROM products;

--  Write a query to find the maximum `total_amount` from the `sales` table.
SELECT MAX(total_amount) AS maximum_total_amount
FROM sales;

-- Write a query to calculate the total amount paid for all sales.
SELECT SUM(total_amount) AS total_amount_paid
FROM sales;

-- Write a query to calculate the minimum and maximum sale quantities.
SELECT MIN(quantity) AS minimum_quantity, MAX(quantity) AS maximum_quantity
FROM sales;

-- Write a query to determine the number of distinct product categories available.
SELECT COUNT(DISTINCT category) AS number_of_categories
FROM products;

-- Write a query to identify the customer with the highest total purchase amount.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM customers c
INNER JOIN sales s 
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY SUM(s.total_amount) DESC
LIMIT 1;

-- Calculate the total number of products sold for each product category and sort the result in descending order.
SELECT p.category, SUM(s.quantity) AS total_quantity_sold
FROM products p
INNER JOIN sales s
 ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY SUM(s.quantity) DESC;

-- Write a query that retrieves the details of sales made in the last 30 days.
SELECT *
FROM sales
WHERE sale_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- Create a query to display the top 3 customers with the most sales in terms of quantity.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.quantity) AS total_quantity_sold
FROM customers c
INNER JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY SUM(s.quantity) DESC
LIMIT 3;

-- Write a query to list all customers whose names start with the letter "J".
SELECT *
FROM customers
WHERE first_name LIKE 'J%';

-- Write a query to calculate the total unpaid amount for each sale by subtracting `amount_paid` from `total_amount`.
SELECT sales.total_amount - payments.amount_paid AS unpaid_amount
FROM sales;

-- Write a query to find sales where the payment method was "Credit Card" and the `total_amount` is greater than $50.
SELECT *FROM payments
WHERE payment_method = 'Credit Card' AND amount_paid > 50000;

-- Write a query that lists all sales made by customers whose last names contain the letter "e".
SELECT *
FROM sales
INNER JOIN customers 
ON sales.customer_id = customers.customer_id
WHERE customers.last_name LIKE '%e%';