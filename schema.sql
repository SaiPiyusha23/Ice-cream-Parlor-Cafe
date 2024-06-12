-- Create the flavors table
CREATE TABLE IF NOT EXISTS flavors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    ingredients TEXT NOT NULL,
    season TEXT NOT NULL
);

-- Create the inventory table
CREATE TABLE IF NOT EXISTS inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ingredient TEXT NOT NULL,
    quantity INTEGER NOT NULL
);

-- Create the suggestions table
CREATE TABLE IF NOT EXISTS suggestions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    flavor TEXT NOT NULL,
    main_ingredient TEXT NOT NULL,
    allergens TEXT
);

-- Create the cart table
CREATE TABLE IF NOT EXISTS cart (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    flavor_id INTEGER NOT NULL,
    FOREIGN KEY (flavor_id) REFERENCES flavors(id)
);

-- Create the allergens table
CREATE TABLE IF NOT EXISTS allergens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);