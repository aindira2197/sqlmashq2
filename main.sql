-- Bo'limlar
INSERT INTO Departments (dept_name, location) VALUES ('IT', 'Toshkent'), ('Sales', 'Samarqand'), ('HR', 'Buxoro');

-- Xodimlar (Self-referencing manager_id bilan)
INSERT INTO Employees (first_name, last_name, salary, hire_date, dept_id, manager_id) VALUES 
('Ali', 'Valiyev', 5000, '2020-01-15', 1, NULL),
('Olim', 'Sodiqov', 4000, '2021-03-20', 1, 1),
('Zoda', 'Karimova', 3500, '2022-05-10', 2, 1),
('Jasur', 'Hamidov', 2800, '2023-06-01', 2, 3);

-- Kategoriyalar va Mahsulotlar
INSERT INTO Categories (cat_name) VALUES ('Electronics'), ('Home Appliances'), ('Books');
INSERT INTO Products (prod_name, price, stock_quantity, cat_id) VALUES 
('iPhone 15', 1200, 50, 1), ('MacBook Pro', 2500, 20, 1),
('Washing Machine', 600, 15, 2), ('Clean Code Book', 40, 100, 3);

-- Mijozlar va Buyurtmalar
INSERT INTO Customers (cust_name, email, region) VALUES 
('Aziz Karimov', 'aziz@mail.com', 'Toshkent'),
('Malika Axmedova', 'malika@mail.com', 'Fargona');

INSERT INTO Orders (cust_id, total_amount) VALUES (1, 3700), (2, 600);
INSERT INTO OrderDetails (order_id, prod_id, quantity, unit_price) VALUES 
(1, 1, 1, 1200), (1, 2, 1, 2500), (2, 3, 1, 600);
