-- Insert sample data into flavors table
INSERT INTO flavors (name, description, ingredients, season) VALUES ('Strawberry Delight', 'A refreshing summer treat with fresh strawberries.', 'Milk, Sugar, Strawberries', 'Summer');
INSERT INTO flavors (name, description, ingredients, season) VALUES ('Pumpkin Spice', 'A fall favorite with pumpkin and spices.', 'Milk, Sugar, Pumpkin, Cinnamon', 'Fall');
INSERT INTO flavors (name, description, ingredients, season) VALUES ('Peppermint Twist', 'A cool winter delight with peppermint.', 'Milk, Sugar, Peppermint', 'Winter');
INSERT INTO flavors (name, description, ingredients, season) VALUES ('Mango Madness', 'A tropical spring flavor with ripe mangoes.', 'Milk, Sugar, Mango', 'Spring');
INSERT INTO flavors (name, description, ingredients, season) VALUES ('Vanilla Bean', 'Classic and creamy vanilla bean ice cream.', 'Milk, Sugar, Vanilla', 'All Seasons');
INSERT INTO flavors (name, description, ingredients, season) VALUES ('Chocolate Heaven', 'Rich and creamy chocolate ice cream.', 'Milk, Sugar, Chocolate', 'All Seasons');
INSERT INTO flavors (name, description, ingredients, season) VALUES ('Blueberry Bliss', 'A delightful summer flavor with fresh blueberries.', 'Milk, Sugar, Blueberries', 'Summer');
INSERT INTO flavors (name, description, ingredients, season) VALUES ('Gingerbread Cookie', 'A winter treat with gingerbread flavor.', 'Milk, Sugar, Ginger, Molasses', 'Winter');

-- Insert sample data into inventory table
INSERT INTO inventory (ingredient, quantity) VALUES ('Milk', 100);
INSERT INTO inventory (ingredient, quantity) VALUES ('Sugar', 50);
INSERT INTO inventory (ingredient, quantity) VALUES ('Strawberries', 30);
INSERT INTO inventory (ingredient, quantity) VALUES ('Pumpkin', 20);
INSERT INTO inventory (ingredient, quantity) VALUES ('Peppermint', 40);
INSERT INTO inventory (ingredient, quantity) VALUES ('Mango', 25);
INSERT INTO inventory (ingredient, quantity) VALUES ('Vanilla', 50);
INSERT INTO inventory (ingredient, quantity) VALUES ('Chocolate', 60);
INSERT INTO inventory (ingredient, quantity) VALUES ('Blueberries', 35);
INSERT INTO inventory (ingredient, quantity) VALUES ('Ginger', 15);
INSERT INTO inventory (ingredient, quantity) VALUES ('Eggs', 70);
INSERT INTO inventory (ingredient, quantity) VALUES ('Cream', 80);

-- Insert sample data into suggestions table
INSERT INTO suggestions (flavor, main_ingredient, allergens) VALUES ('Coconut Bliss', 'Coconut', 'Coconut');
INSERT INTO suggestions (flavor, main_ingredient, allergens) VALUES ('Chocolate Hazelnut', 'Hazelnuts', 'Hazelnuts');
INSERT INTO suggestions (flavor, main_ingredient, allergens) VALUES ('Lemon Lavender', 'Lemon', NULL);
INSERT INTO suggestions (flavor, main_ingredient, allergens) VALUES ('Caramel Swirl', 'Caramel', 'Milk, Eggs');
INSERT INTO suggestions (flavor, main_ingredient, allergens) VALUES ('Mint Chocolate Chip', 'Peppermint', 'Peppermint, Chocolate');