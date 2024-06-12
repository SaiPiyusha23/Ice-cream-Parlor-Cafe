import sqlite3

def initialize_db():
    try:
        conn = sqlite3.connect('ice_cream_parlor.db')
        c = conn.cursor()
        
        # Execute schema script
        with open('schema.sql', 'r') as f:
            schema_script = f.read()
        c.executescript(schema_script)
        
        # Check if flavors table is empty
        c.execute("SELECT COUNT(*) FROM flavors")
        num_flavors = c.fetchone()[0]
        
        if num_flavors == 0:
            # Execute sample data script
            with open('sample_data.sql', 'r') as f:
                sample_data_script = f.read()
            c.executescript(sample_data_script)
            
            conn.commit()
            print("Database initialized successfully.")
        else:
            print("Database already contains data.")
        
        conn.close()
    except Exception as e:
        print("An error occurred while initializing the database:", e)

def main_menu():
    print("\nWelcome to the Ice Cream Parlor Cafe!")
    print("1. View Seasonal Flavors")
    print("2. View Ingredient Inventory")
    print("3. View Customer Suggestions")
    print("4. Add Flavor to Cart")
    print("5. View Cart")
    print("6. Search & Filter Offerings")
    print("7. Exit")
    
    choice = input("Enter your choice: ")
    return choice

def view_seasonal_flavors():
    try:
        conn = sqlite3.connect('ice_cream_parlor.db')
        c = conn.cursor()
        c.execute("SELECT * FROM flavors")
        flavors = c.fetchall()
        conn.close()
        
        if flavors:
            print("Seasonal Flavors:")
            for flavor in flavors:
                print(f"{flavor[0]}. {flavor[1]} - {flavor[2]} - Ingredients: {flavor[3]} - Season: {flavor[4]}")
        else:
            print("No seasonal flavors available.")
    except sqlite3.OperationalError:
        print("Database error: Flavors table does not exist. Initialize the database.")

def view_inventory():
    try:
        conn = sqlite3.connect('ice_cream_parlor.db')
        c = conn.cursor()
        c.execute("SELECT * FROM inventory")
        inventory = c.fetchall()
        conn.close()
        
        if inventory:
            print("Ingredient Inventory:")
            for item in inventory:
                print(f"{item[0]}. {item[1]} - {item[2]}")
        else:
            print("No ingredients in inventory.")
    except sqlite3.OperationalError:
        print("Database error: Inventory table does not exist. Initialize the database.")

def view_suggestions():
    try:
        conn = sqlite3.connect('ice_cream_parlor.db')
        c = conn.cursor()
        c.execute("SELECT * FROM suggestions")
        suggestions = c.fetchall()
        conn.close()
        
        if suggestions:
            print("Customer Suggestions:")
            for suggestion in suggestions:
                print(f"{suggestion[0]}. {suggestion[1]} - Main Ingredient: {suggestion[2]} - Allergens: {suggestion[3]}")
        else:
            print("No customer suggestions available.")
    except sqlite3.OperationalError:
        print("Database error: Suggestions table does not exist. Initialize the database.")

def add_flavor_to_cart():
    flavor_id = input("Enter the ID of the flavor to add to cart: ")
    try:
        conn = sqlite3.connect('ice_cream_parlor.db')
        c = conn.cursor()
        c.execute("INSERT INTO cart (flavor_id) VALUES (?)", (flavor_id,))
        conn.commit()
        conn.close()
        print("Flavor added to cart.")
    except sqlite3.IntegrityError:
        print("Error: Invalid flavor ID.")

def view_cart():
    try:
        conn = sqlite3.connect('ice_cream_parlor.db')
        c = conn.cursor()
        c.execute("SELECT cart.id, flavors.name FROM cart JOIN flavors ON cart.flavor_id = flavors.id")
        cart_items = c.fetchall()
        conn.close()
        
        if cart_items:
            print("Your Cart:")
            for item in cart_items:
                print(f"{item[0]}. {item[1]}")
        else:
            print("Your cart is empty.")
    except sqlite3.OperationalError:
        print("Database error: Flavors table does not exist. Initialize the database.")

def search_filter_offerings():
    search_term = input("Enter search term: ")
    try:
        conn = sqlite3.connect('ice_cream_parlor.db')
        c = conn.cursor()
        c.execute("SELECT * FROM flavors WHERE name LIKE ?", ('%' + search_term + '%',))
        flavors = c.fetchall()
        conn.close()
        
        if flavors:
            print("Search Results:")
            for flavor in flavors:
                print(f"{flavor[0]}. {flavor[1]} - {flavor[2]} - Ingredients: {flavor[3]} - Season: {flavor[4]}")
        else:
            print("No flavors found.")
    except sqlite3.OperationalError:
        print("Database error: Flavors table does not exist. Initialize the database.")

def main():
    initialize_db()
    while True:
        choice = main_menu()
        if choice == '1':
            view_seasonal_flavors()
        elif choice == '2':
            view_inventory()
        elif choice == '3':
            view_suggestions()
        elif choice == '4':
            add_flavor_to_cart()
        elif choice == '5':
            view_cart()
        elif choice == '6':
            search_filter_offerings()
        elif choice == '7':
            print("Goodbye, Have a Nice Day!")
            break
        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()
