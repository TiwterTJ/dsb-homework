CREATE TABLE staff (
  staff_id	INT,	
  name	VARCHAR,
  role	VARCHAR,	
  contact	VARCHAR
);

INSERT INTO staff (staff_id, name, role, contact) VALUES
  (1,	'John Doe',	'Chef',	'123-456-7890'),
  (2,	'Sarah Smith',	'Server',	'987-654-3210'),
  (3,	'Mike Johnson',	'Cashier',	'555-666-7777');

SELECT * from staff;

CREATE TABLE menu (
	menu_id	INT,	
    item_name	VARCHAR,	
    price	DECIMAL,	
    ingredient_id	INT
);

INSERT into menu VALUES
    (1, 'Ribeye Steak', 25.99, 1),            -- FK references ingredient ID 1
    (2, 'Filet Mignon', 29.99, 2),            -- FK references ingredient ID 2
    (3, 'Grilled Salmon', 20.99, 3),          -- FK references ingredient ID 3
    (4, 'Chicken Alfredo', 15.99, 4),         -- FK references ingredient ID 4
    (5, 'Vegetable Stir Fry', 12.99, 6),      -- FK references ingredient ID 6
    (6, 'Lobster Tail', 49.99, 7),            -- FK references ingredient ID 7
    (7, 'Pork Chops', 22.99, 8),              -- FK references ingredient ID 8
    (8, 'Caesar Salad', 9.99, 6),             -- FK references ingredient ID 6
    (9, 'Shrimp Tacos', 18.99, 9),            -- FK references ingredient ID 9
    (10, 'New York Cheesecake', 6.99, 10);   -- FK references ingredient ID 10
    
SELECT * from menu;

create table ingredient (
  ingredient_id	INT,	
  name	VARCHAR,
  stock_qty	INT
);

INSERT into ingredient VALUES
    (1, 'Ribeye Steak', 20),
    (2, 'Filet Mignon', 15),
    (3, 'Salmon Fillet', 10),
    (4, 'Fettuccine Pasta', 5),
    (5, 'Alfredo Sauce', 3),
    (6, 'Mixed Vegetables', 7),
    (7, 'Lobster Tail', 30),
    (8, 'Pork Loin', 25),
    (9, 'Taco Shells', 12),
    (10, 'Cream Cheese', 8);
  
SELECT * FROM ingredient;

CREATE TABLE transactions (
  transaction_id	INT,	
  menu_id	INT,	
  staff_id	INT,	
  quantity	INT,	
  total_price	DECIMAL,	
  date	DATE	
);

INSERT into transactions VALUES
    (1, 1, 2, 2, 51.98, '2023-11-01'),  -- Ribeye Steak, 2 orders
    (2, 3, 3, 1, 20.99, '2023-11-02'),  -- Grilled Salmon, 1 order
    (3, 2, 1, 1, 29.99, '2023-11-03'),  -- Filet Mignon, 1 order
    (4, 4, 2, 3, 47.97, '2023-11-04'),  -- Chicken Alfredo, 3 orders
    (5, 5, 3, 2, 25.98, '2023-11-05'),  -- Vegetable Stir Fry, 2 orders
    (6, 6, 1, 1, 49.99, '2023-11-06'),  -- Lobster Tail, 1 order
    (7, 7, 2, 2, 45.98, '2023-11-07'),  -- Pork Chops, 2 orders
    (8, 8, 3, 1, 9.99, '2023-11-08'),   -- Caesar Salad, 1 order
    (9, 9, 1, 3, 56.97, '2023-11-09'),  -- Shrimp Tacos, 3 orders
    (10, 10, 2, 1, 6.99, '2023-11-10');  -- New York Cheesecake, 1 order
    
SELECT * FROM transactions;
