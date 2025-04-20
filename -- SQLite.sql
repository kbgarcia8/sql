CREATE TABLE menu_items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  category TEXT,
  price REAL
);

INSERT INTO menu_items (name, category, price) VALUES 
('Caramel Macchiato', 'Drink', 3.99),
('Baked Mac', 'Pasta', 6.50);

SELECT * FROM menu_items;