--Creating table and inserting data
/*
    CREATE TABLE <table_name> (
        id INTEGER PRIMARY KEY AUTOINCREMENT, --> This is standard in creating table
        <column1> <data_type>,
        <column2> <data_type>
    )
    --EXAMPLE of inserting single data, when inserting the items inside the parenthesis must be in the  same order as what it is declared in CREATE TABLE
    INSERT INTO book_list VALUES (1, "A Fault in our Stars", 4.5);

	--EXAMPLE of inserting multiple data in same table
	INSERT INTO menu_items (name, category, price) VALUES 
    ('Caramel Macchiato', 'Drink', 3.99),
    ('Baked Mac', 'Pasta', 6.50);
*/
DROP TABLE IF EXISTS menu_items;

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
---------------------------------
-- Sample in Querying
DROP TABLE IF EXISTS movies; --Drop table before recreating

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);

SELECT * FROM movies;
SELECT * FROM movies WHERE release_year > 2000 ORDER BY release_year;
-----------------------------------
DROP TABLE IF EXISTS groceries;

CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

--QUERYING the table, note that caputal letters are commands
SELECT name FROM groceries; -- to retreive all data from groceries table
SELECT * FROM groceries ORDER BY aisle;
SELECT * FROM groceries WHERE aisle > 5 ORDER BY aisle;
--AGGREGATING DATA

SELECT SUM(quantity) FROM groceries;
SELECT aisle, SUM(quantity) FROM groceries GROUP BY aisle;
