CREATE DATABASE shop_inventory;
USE shop_inventory;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO products (name, category, quantity, price) VALUES
('Laptop', 'Electronics', 10, 55000),
('Headphones', 'Electronics', 50, 1500),
('Shoes', 'Footwear', 30, 2500);

-- Update stock
UPDATE products
SET quantity = quantity - 2
WHERE product_id = 1;

-- Delete product
DELETE FROM products WHERE product_id = 3;

-- Total inventory value
SELECT SUM(quantity * price) AS total_value FROM products;

-- Most expensive item
SELECT * FROM products ORDER BY price DESC LIMIT 1;

