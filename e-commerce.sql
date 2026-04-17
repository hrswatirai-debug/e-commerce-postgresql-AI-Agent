
-- Create the table
CREATE TABLE products (
	id		  SERIAL PRIMARY KEY,
	name      VARCHAR(100),
	price     NUMERIC(10,2),
	stock     INTEGER,
	category  VARCHAR(50),
	created_at TIMESTAMP DEFAULT NOW()
);

--Insert sample data
INSERT INTO products (name, price, stock, category) VALUES
('Wireless Mouse',                        29.99,  150,  'Electronics'),
('Mechanical Keyboard',                   89.99,   60,  'Electronics'),
('USB-C Hub',                             45.00,  200,  'Accessories'),
('Standing Desk Mat',                     35.50,   80,  'Office'),
('Laptop Stand',                          55.00,   40,  'Accessories'),
('Webcam HD 1080p',                       75.00,   25,  'Electronics'),
('Noise Cancelling Headphones',          199.99,   15,  'Electronics'),
('Desk Organizer',                        22.00,  300,  'Office'),
('Blue Light Glasses',                    18.99,  500,  'Accessories'),
('Ergonomic Chair Cushion',               42.00,   90,  'Office');

SELECT * FROM products;