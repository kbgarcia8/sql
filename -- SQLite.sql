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

/**
    CREATE TABLE <table_name> (
        id INTEGER PRIMARY KEY AUTOINCREMENT, --> This is standard in creating table
        <column1> <data_type>,
        <column2> <data_type>
    )
    //EXAMPLE of inserting single data
    INSERT INTO book_list VALUES (1, "A Fault in our Stars", 4.5);

	//EXAMPLE of inserting multiple data in same table
	INSERT INTO menu_items (name, category, price) VALUES 
    ('Caramel Macchiato', 'Drink', 3.99),
    ('Baked Mac', 'Pasta', 6.50);
**/
