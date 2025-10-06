--TasteHub Ordering System Database Schema
--created for data tools final project(Supabase PostgreSQL)

-- Customers Table
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  full_name TEXT,
  phone VARCHAR(20) UNIQUE NOT NULL,
  location VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);


-- Menu Items Table

CREATE TABLE menu_items (
  item_id SERIAL PRIMARY KEY,
  item_name TEXT,
  category VARCHAR(50),
  price INT NOT NULL,
 available BOOLEAN DEFAULT TRUE
);


-- Orders Table
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id) ON DELETE CASCADE,
  order_name TEXT,
  order_date TIMESTAMP DEFAULT NOW(),
  status VARCHAR(20) DEFAULT 'PENDING'
);


-- Joint Table: Order Items
-- ===================
CREATE TABLE order_items (
  order_item_id SERIAL PRIMARY KEY,
  order_id INT REFERENCES orders(order_id) ON DELETE CASCADE,
  item_id INT REFERENCES menu_items(item_id) ON DELETE CASCADE,
  quantity INT NOT NULL
);


--Insert Sample Data‌ into Customer Table
INSERT INTO customers (full_name, phone, location) VALUES
('Alice Johnson', '0712345678', 'Nairobi'),
('Bob Smith', '0723456789', 'Westland'),
('Carol Davis', '0734567890', 'Parklands'),
('David Brown', '0745678901', 'Embakasi'),
('Eva Wilson', '0756789012', 'Kangemi'),
('Frank Williams', '0767890123', 'Pipeline');

--Insert Sample Data‌ into Menu items Table
INSERT INTO menu_items (item_name, category, price) VALUES
('Chapati', 'Main Dish', 100),
('Beef Stew', 'Main Dish', 150),
('Chicken Curry', 'Main Dish', 300),
('Soda', 'Drink', 50),
('Ugali', 'Main Dish', 40),
('Fruit Salad', 'Dessert', 200);

-- Insert Sample Data into Orders Table
INSERT INTO orders (customer_id, order_name, status) VALUES
(1, 'Beef Stew + Ugali', 'Pending'),
(2, 'Chicken Curry + Soda', 'Preparing'),
(3, 'Chapati + Beef Stew', 'Served'),
(4, '2 Sodas + Fruit Salad', 'Paid'),
(5, 'Ugali + Chapati + Soda', 'Pending'),
(6, 'Grilled Fish + Ugali', 'Preparing');


-- Insert Sample Data into Order Items Table(Joint table)
INSERT INTO order_items (order_id, item_id, quantity) VALUES
(1, 2, 1),  -- Beef Stew
(2, 3, 1),  -- Chicken Curry
(3, 1, 2),  -- Chapati
(4, 4, 2),  -- Soda
(5, 5, 1);  -- Ugali


SELECT 
  o.order_id,
  c.full_name AS customer_name,
  o.order_name,
  o.status,
  o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

SELECT item_name, category, price
FROM menu_items
WHERE available = TRUE;

SELECT 
  o.order_id,
  c.full_name AS customer,
  m.item_name AS menu_item,
  oi.quantity,
  o.status,
  o.order_date
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
JOIN menu_items m ON oi.item_id = m.item_id
ORDER BY o.order_id;

