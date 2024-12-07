CREATE DATABASE Mike_Pizza_DB;

-- Dim_Customers Table
-- CREATED BY Edmond  Credit github Account: Ecar0301
CREATE TABLE Dim_Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15) NOT NULL
);

use Mike_Pizza_DB;



INSERT INTO Dim_Customers(customer_id, name, email, phone_number)
VALUES (1, 'Josh Allen', 'josh.allen@fakebills.com', '716-555-3001'), 
	   (2, 'Stefon Diggs', 'stefon.diggs@fakebills.com', '716-555-3002'), 
	   (3, 'Dawson Knox', 'dawson.knox@fakebills.com', '716-555-3003'), 
	   (4, 'Von Miller', 'von.miller@fakebills.com', '716-555-3004'), 
	   (5, 'Tre''Davious White', 'tre.white@fakebills.com', '716-555-3005'), 
	   (6, 'Gabriel Davis', 'gabriel.davis@fakebills.com', '716-555-3006'), 
	   (7, 'Matt Milano', 'matt.milano@fakebills.com', '716-555-3007'), 
	   (8, 'Jordan Poyer', 'jordan.poyer@fakebills.com', '716-555-3008'), 
	   (9, 'Micah Hyde', 'micah.hyde@fakebills.com', '716-555-3009'), 
	   (10, 'James Cook', 'james.cook@fakebills.com', '716-555-3010'), 
	   (11, 'Tyler Bass', 'tyler.bass@fakebills.com', '716-555-3011'), 
	   (12, 'Kaiir Elam', 'kaiir.elam@fakebills.com', '716-555-3012'), 
	   (13, 'Leonard Floyd', 'leonard.floyd@fakebills.com', '716-555-3013'), 
	   (14, 'Damien Harris', 'damien.harris@fakebills.com', '716-555-3014'), 
	   (15, 'O''Cyrus Torrence', 'ocyrus.torrence@fakebills.com', '716-555-3015'), 
	   (16, 'Spencer Brown', 'spencer.brown@fakebills.com', '716-555-3016'), 
	   (17, 'Greg Rousseau', 'greg.rousseau@fakebills.com', '716-555-3017'), 
	   (18, 'Ed Oliver', 'ed.oliver@fakebills.com', '716-555-3018'), 
	   (19, 'Terrel Bernard', 'terrel.bernard@fakebills.com', '716-555-3019'), 
	   (20, 'Damar Hamlin', 'damar.hamlin@fakebills.com', '716-555-3020'), 
	   (21, 'Quentin Morris', 'quentin.morris@fakebills.com', '716-555-3021'), 
	   (22, 'A.J. Epenesa', 'aj.epenesa@fakebills.com', '716-555-3022'), 
	   (23, 'Tim Settle', 'tim.settle@fakebills.com', '716-555-3023'), 
	   (24, 'Dane Jackson', 'dane.jackson@fakebills.com', '716-555-3024'), 
	   (25, 'Tyrel Dodson', 'tyrel.dodson@fakebills.com', '716-555-3025'), 
	   (26, 'Ryan Bates', 'ryan.bates@fakebills.com', '716-555-3026'), 
	   (27, 'Khalil Shakir', 'khalil.shakir@fakebills.com', '716-555-3027'), 
	   (28, 'A.J. Klein', 'aj.klein@fakebills.com', '716-555-3028'), 
	   (29, 'Latavius Murray', 'latavius.murray@fakebills.com', '716-555-3029'), 
	   (30, 'Reggie Gilliam', 'reggie.gilliam@fakebills.com', '716-555-3030'), 
	   (31, 'Tommy Doyle', 'tommy.doyle@fakebills.com', '716-555-3031'), 
	   (32, 'Alec Anderson', 'alec.anderson@fakebills.com', '716-555-3032'), 
	   (33, 'Justin Shorter', 'justin.shorter@fakebills.com', '716-555-3033'), 
	   (34, 'Cam Lewis', 'cam.lewis@fakebills.com', '716-555-3034'), 
	   (35, 'Eli Ankou', 'eli.ankou@fakebills.com', '716-555-3035'), 
	   (36, 'Baylon Spector', 'baylon.spector@fakebills.com', '716-555-3036'), 
	   (37, 'Tyler Matakevich', 'tyler.matakevich@fakebills.com', '716-555-3037'), 
	   (38, 'Ja''Marcus Ingram', 'jamarcus.ingram@fakebills.com', '716-555-3038'), 
	   (39, 'Zayne Anderson', 'zayne.anderson@fakebills.com', '716-555-3039'), 
	   (40, 'Nick Broeker', 'nick.broeker@fakebills.com', '716-555-3040'), 
	   (41, 'Ryan Van Demark', 'ryan.vandemark@fakebills.com', '716-555-3041'), 
	   (42, 'Austin Rehkow', 'austin.rehkow@fakebills.com', '716-555-3042'), 
	   (43, 'Jordan Mims', 'jordan.mims@fakebills.com', '716-555-3043'), 
	   (44, 'Joel Wilson', 'joel.wilson@fakebills.com', '716-555-3044'), 
	   (45, 'Dean Marlowe', 'dean.marlowe@fakebills.com', '716-555-3045'), 
	   (46, 'Brandon Shell', 'brandon.shell@fakebills.com', '716-555-3046'), 
	   (47, 'Ike Boettger', 'ike.boettger@fakebills.com', '716-555-3047'), 
	   (48, 'Terrell Miller', 'terrell.miller@fakebills.com', '716-555-3048'), 
	   (49, 'Shane Ray', 'shane.ray@fakebills.com', '716-555-3049'), 
	   (50, 'David Edwards', 'david.edwards@fakebills.com', '716-555-3050');

-- Dim_Addresses Table
-- CREATED BY Edmond  Credit github Account: Ecar0301
CREATE TABLE Dim_Addresses (
    address_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state CHAR(2) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Dim_Customers(customer_id)
);

-- Insert Data into Dim_Addresses Table
INSERT INTO Dim_Addresses (address_id, customer_id, street, city, state, zip_code)
VALUES
    (101, 1, '123 Elmwood Ave', 'Buffalo', 'NY', '14201'),
    (102, 2, '456 Niagara St', 'Buffalo', 'NY', '14202'),
    (103, 3, '789 Delaware Ave', 'Buffalo', 'NY', '14203'),
    (104, 4, '101 Chippewa St', 'Buffalo', 'NY', '14204'),
    (105, 5, '202 Main St', 'Buffalo', 'NY', '14205'),
    (106, 6, '303 Hertel Ave', 'Buffalo', 'NY', '14206'),
    (107, 7, '404 Broadway St', 'Buffalo', 'NY', '14207'),
    (108, 8, '505 Elmwood Ave', 'Buffalo', 'NY', '14208'),
    (109, 9, '606 Grant St', 'Buffalo', 'NY', '14209'),
    (110, 10, '707 Amherst St', 'Buffalo', 'NY', '14210'),
    (111, 11, '808 Jefferson Ave', 'Buffalo', 'NY', '14211'),
    (112, 12, '909 Michigan Ave', 'Buffalo', 'NY', '14212'),
    (113, 13, '1010 Kensington Ave', 'Buffalo', 'NY', '14213'),
	  (114, 14, '1111 Bailey Ave', 'Buffalo', 'NY', '14214'),
    (115, 15, '1212 Walden Ave', 'Buffalo', 'NY', '14215'),
    (116, 16, '1313 Abbott Rd', 'Buffalo', 'NY', '14216'),
    (117, 17, '1414 Genesee St', 'Buffalo', 'NY', '14217'),
    (118, 18, '1515 Sycamore St', 'Buffalo', 'NY', '14218'),
    (119, 19, '1616 Sheridan Dr', 'Buffalo', 'NY', '14219'),
    (120, 20, '1717 Delaware Rd', 'Buffalo', 'NY', '14220'),
    (121, 21, '1818 Military Rd', 'Buffalo', 'NY', '14221'),
    (122, 22, '1919 Hertel Ave', 'Buffalo', 'NY', '14222'),
    (123, 23, '2020 Elmwood Ave', 'Buffalo', 'NY', '14223'),
    (124, 24, '2121 Niagara St', 'Buffalo', 'NY', '14224'),
    (125, 25, '2222 Main St', 'Buffalo', 'NY', '14225'),
    (126, 26, '2323 Broadway St', 'Buffalo', 'NY', '14226'),
    (127, 27, '2424 Chippewa St', 'Buffalo', 'NY', '14227'),
    (128, 28, '2525 Amherst St', 'Buffalo', 'NY', '14228'),
    (129, 29, '2626 Grant St', 'Buffalo', 'NY', '14229'),
    (130, 30, '2727 Delaware Ave', 'Buffalo', 'NY', '14230'),
    (131, 31, '2828 Jefferson Ave', 'Buffalo', 'NY', '14231'),
    (132, 32, '2929 Michigan Ave', 'Buffalo', 'NY', '14232'),
    (133, 33, '3030 Walden Ave', 'Buffalo', 'NY', '14233'),
    (134, 34, '3131 Kensington Ave', 'Buffalo', 'NY', '14234'),
	(135, 35, '3232 Sycamore St', 'Buffalo', 'NY', '14235'),
    (136, 36, '3333 Bailey Ave', 'Buffalo', 'NY', '14236'),
    (137, 37, '3434 Genesee St', 'Buffalo', 'NY', '14237'),
    (138, 38, '3535 Abbott Rd', 'Buffalo', 'NY', '14238'),
    (139, 39, '3636 Elmwood Ave', 'Buffalo', 'NY', '14239'),
    (140, 40, '3737 Sheridan Dr', 'Buffalo', 'NY', '14240'),
    (141, 41, '3838 Military Rd', 'Buffalo', 'NY', '14241'),
    (142, 42, '3939 Delaware Rd', 'Buffalo', 'NY', '14242'),
    (143, 43, '4040 Chippewa St', 'Buffalo', 'NY', '14243'),
    (144, 44, '4141 Amherst St', 'Buffalo', 'NY', '14244'),
    (145, 45, '4242 Broadway St', 'Buffalo', 'NY', '14245'),
    (146, 46, '4343 Grant St', 'Buffalo', 'NY', '14246'),
    (147, 47, '4444 Hertel Ave', 'Buffalo', 'NY', '14247'),
    (148, 48, '4545 Jefferson Ave', 'Buffalo', 'NY', '14248'),
    (149, 49, '4646 Michigan Ave', 'Buffalo', 'NY', '14249'),
    (150, 50, '4747 Sycamore St', 'Buffalo', 'NY', '14250')
	;


	-- Dim_Staff Table
-- CREATED BY Mina  Credit github Account: Aallen747
CREATE TABLE Dim_Staff (
    staff_id INT PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    role NVARCHAR(50) NOT NULL,
    contact_info NVARCHAR(255) NOT NULL
);

-- Populate Dim_Staff Table
-- CREATED by Mina Credit to Github Account: Aallen747
INSERT INTO Dim_Staff (staff_id, name, role, contact_info)
VALUES
    (1, 'John Doe', 'Manager', 'john.doe@example.com'),
    (2, 'Jane Smith', 'Waitstaff', 'jane.smith@example.com'),
    (3, 'Alice Johnson', 'Chef', 'alice.johnson@example.com'),
    (4, 'Bob Brown', 'Sous Chef', 'bob.brown@example.com'),
    (5, 'Charlie Davis', 'Dishwasher', 'charlie.davis@example.com'),
    (6, 'David Miller', 'Bartender', 'david.miller@example.com'),
	(7, 'Eve Wilson', 'Waitstaff', 'eve.wilson@example.com'),
	(8, 'Frank Taylor', 'Manager', 'frank.taylor@example.com'),
	(9, 'Grace Martinez', 'Host', 'grace.martinez@example.com'),
	(10, 'Henry Thomas', 'Chef', 'henry.thomas@example.com'),
	(11, 'Isabelle Moore', 'Waitstaff', 'isabelle.moore@example.com'),
	(12, 'Jack Anderson', 'Dishwasher', 'jack.anderson@example.com'),
	(13, 'Katherine Thomas', 'Sous Chef', 'katherine.thomas@example.com'),
	(14, 'Liam Harris', 'Bartender', 'liam.harris@example.com'),
	(15, 'Megan Scott', 'Manager', 'megan.scott@example.com'),
	(16, 'Nathan Walker', 'Waitstaff', 'nathan.walker@example.com'),
	(17, 'Olivia Young', 'Host', 'olivia.young@example.com'),
	(18, 'Paul King', 'Chef', 'paul.king@example.com'),
	(19, 'Quinn Perez', 'Sous Chef', 'quinn.perez@example.com'),
	(20, 'Rachel Lee', 'Dishwasher', 'rachel.lee@example.com'),
	(21, 'Samuel Clark', 'Bartender', 'samuel.clark@example.com'),
	(22, 'Tina Lewis', 'Waitstaff', 'tina.lewis@example.com'),
	(23, 'Ursula Walker', 'Manager', 'ursula.walker@example.com'),
	(24, 'Victor Robinson', 'Host', 'victor.robinson@example.com'),
	(25, 'Wendy Carter', 'Chef', 'wendy.carter@example.com');
;

-- Dim_Shifts Table
-- CREATE BY Josh Oxner CREDIT to github Account: JoshOx3000 
CREATE TABLE Dim_Shifts (
    shift_id INT PRIMARY KEY,
    shift_start TIME NOT NULL,
    shift_end TIME NOT NULL
);

-- Populate Dim_Shifts Table
INSERT INTO Dim_Shifts (shift_id, shift_start, shift_end)
VALUES 
    (1, '08:00:00', '12:00:00'),
    (2, '12:00:00', '16:00:00'),
    (3, '16:00:00', '20:00:00'),
    (4, '20:00:00', '00:00:00');

-- Recipes Table
-- Create by Josh Thomas Credit to Github Account: Jthom3367
CREATE TABLE Recipes (
    recipe_id INT PRIMARY KEY,
    recipe_name VARCHAR(100) NOT NULL,
    ingredients TEXT NOT NULL
);


-- Populate Recipes Table
INSERT INTO Recipes (recipe_id, recipe_name, ingredients)
VALUES
    (1, 'Classic Pepperoni', 'Pizza dough, Tomato sauce, Mozzarella, Pepperoni'),
    (2, 'Veggie Delight', 'Pizza dough, Tomato sauce, Mozzarella, Bell peppers, Onions, Mushrooms, Black olives'),
(3, 'Hawaiian', 'Pizza dough, Tomato sauce, Mozzarella, Ham, Pineapple'),
(4, 'BBQ Pulled Pork', 'Pizza dough, BBQ sauce, Pulled pork, Red onions, Mozzarella, Cheddar cheese'),
(5, 'BBQ Chicken', 'Pizza dough, BBQ sauce, Grilled chicken, Red onions, Mozzarella, Cilantro'),
(6, 'Four Cheese', 'Pizza dough, Tomato sauce, Mozzarella, Parmesan, Gorgonzola, Ricotta'),
(7, 'Meat Lover''s', 'Pizza dough, Tomato sauce, Mozzarella, Pepperoni, Sausage, Bacon, Ground beef'),
(8, 'Mediterranean', 'Pizza dough, Olive oil base, Feta cheese, Kalamata olives, Spinach, Sun-dried tomatoes, Artichoke hearts'),
(9, 'Buffalo Chicken', 'Pizza dough, Buffalo sauce, Grilled chicken, Blue cheese, Mozzarella, Chives'),
(10, 'Seafood Delight', 'Pizza dough, White sauce, Shrimp, Crab meat, Mozzarella, Garlic, Parsley'),
(11, 'Mushroom Truffle', 'Pizza dough, Truffle oil, Mixed mushrooms, Mozzarella, Fontina cheese, Thyme'),
(12, 'Spicy Sausage', 'Pizza dough, Tomato sauce, Spicy Italian sausage, Jalapeños, Mozzarella, Red onions'),
(13, 'Prosciutto and Arugula', 'Pizza dough, Olive oil, Mozzarella, Prosciutto, Fresh arugula, Parmesan shavings'),
(14, 'Breakfast Pizza', 'Pizza dough, Cream sauce, Scrambled eggs, Bacon, Cheddar cheese, Chives'),
(15, 'Spinach and Ricotta', 'Pizza dough, Olive oil, Fresh spinach, Ricotta cheese, Garlic, Pine nuts'),
(16, 'Supreme Combo', 'Pizza dough, Tomato sauce, Mozzarella, Pepperoni, Sausage, Bell peppers, Onions, Mushrooms'),
(17, 'White Garlic Chicken', 'Pizza dough, Garlic sauce, Grilled chicken, Roasted garlic, Mozzarella, Parmesan'),
(18, 'Pesto Veggie', 'Pizza dough, Pesto sauce, Zucchini, Cherry tomatoes, Mozzarella, Pine nuts'),
(19, 'Calzone Style', 'Pizza dough, Ricotta, Mozzarella, Pepperoni, Italian herbs, Marinara sauce for dipping'),
(20, 'Margherita Deluxe', 'Pizza dough, San Marzano tomatoes, Buffalo mozzarella, Fresh basil, Extra virgin olive oil, Sea salt'),
(21, 'Goat Cheese Veggie', 'Pizza dough, Olive oil, Goat cheese, Roasted red peppers, Zucchini, Caramelized onions'),
(22, 'Lamb and Mint', 'Pizza dough, Olive oil, Ground lamb, Mint leaves, Feta cheese, Red onions'),
(23, 'Tandoori Chicken', 'Pizza dough, Tandoori sauce, Tandoori chicken, Red onions, Cilantro, Mozzarella'),
(24, 'Roasted Veggie', 'Pizza dough, Pesto base, Roasted eggplant, Zucchini, Bell peppers, Mozzarella'),
(25, 'Classic Quattro Formaggi', 'Pizza dough, Mozzarella, Gorgonzola, Parmesan, Fontina, Olive oil');


-- Ingredients Table

-- Create by Josh Thomas Credit to Github Account: Jthom3367
CREATE TABLE Ingredients (
    ingredient_id INT PRIMARY KEY,
    ingredient_name VARCHAR(100) NOT NULL,
    supplier_info VARCHAR(255) NOT NULL
);


INSERT INTO Ingredients (ingredient_id, ingredient_name, supplier_info)
VALUES
    (1, 'Pizza Dough', 'King Arthur Flour Company'),
    (2, 'San Marzano Tomatoes', 'Cento Fine Foods'),
    (3, 'Fresh Mozzarella', 'Galbani Cheese'),
    (4, 'Fresh Basil', 'Local Organic Farms'),
    (5, 'Extra Virgin Olive Oil', 'Bertolli Imports'),
    (6, 'Pepperoni', 'Hormel Foods'),
    (7, 'Tomato Sauce', 'Hunts'),
    (8, 'Mozzarella Cheese', 'Kraft Foods'),
    (9, 'Bell Peppers', 'Local Farm Fresh Produce'),
    (10, 'Mushrooms', 'Monterey Mushrooms'),
    (11, 'Onions', 'Sysco Produce Suppliers'),
    (12, 'Black Olives', 'Lindsay Olives'),
    (13, 'Ham', 'Smithfield Foods'),
    (14, 'Pineapple', 'Dole Food Company'),
    (15, 'BBQ Sauce', 'Sweet Baby Ray''s'),
    (16, 'Grilled Chicken', 'Tyson Foods'),
    (17, 'Parmesan Cheese', 'Kraft Foods'),
    (18, 'Sausage', 'Jimmy Dean'),
    (19, 'Bacon', 'Oscar Mayer'),
    (20, 'Feta Cheese', 'Dodoni Dairy'),
    (21, 'Shrimp', 'Gulf Seafood Distributors'),
    (22, 'Truffle Oil', 'Urbani Truffles'),
    (23, 'Jalapeños', 'Local Farm Produce'),
    (24, 'Prosciutto', 'Beretta Farms'),
    (25, 'Ricotta Cheese', 'Galbani Cheese');



-- Dim_Items Table
-- CREATED by Mina Credit to Github Account: Aallen747
CREATE TABLE Dim_Items (
    item_id INT PRIMARY KEY,
    item_name NVARCHAR(100) NOT NULL,
    recipe_id INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category NVARCHAR(50) NOT NULL
	CONSTRAINT FK_Recipe FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id)
);


-- Populate Dim_Items Table
INSERT INTO Dim_Items (item_id, item_name, recipe_id, price, category)
VALUES
    (1, 'Cheese Pizza', 1, 8.99, 'Pizza'),
    (2, 'Veggie Burger', 2, 5.49, 'Burger'),
    (3, 'Chicken Wings', 3, 6.99, 'Appetizer'),
    (4, 'Caesar Salad', 4, 4.99, 'Salad'),
    (5, 'Spaghetti Bolognese', 5, 12.99, 'Pasta'),
    (6, 'Grilled Cheese Sandwich', 6, 3.99, 'Sandwich'),
    (7, 'Beef Taco', 7, 2.49, 'Taco'),
    (8, 'Chicken Burrito', 8, 7.99, 'Burrito'),
    (9, 'Margarita Pizza', 9, 9.49, 'Pizza'),
    (10, 'Cheeseburger', 10, 6.49, 'Burger'),
    (11, 'Vegetable Stir Fry', 11, 8.29, 'Entree'),
    (12, 'Fish and Chips', 12, 11.49, 'Seafood'),
    (13, 'Penne Arrabbiata', 13, 10.99, 'Pasta'),
    (14, 'BBQ Ribs', 14, 15.99, 'BBQ'),
    (15, 'Fried Rice', 15, 6.49, 'Asian'),
    (16, 'Chicken Caesar Wrap', 16, 7.49, 'Wrap'),
    (17, 'Grilled Salmon', 17, 14.99, 'Seafood'),
    (18, 'Pork Schnitzel', 18, 13.99, 'European'),
    (19, 'Margherita Salad', 19, 5.49, 'Salad'),
    (20, 'Pulled Pork Sandwich', 20, 8.99, 'Sandwich'),
    (21, 'Lamb Curry', 21, 12.49, 'Indian'),
    (22, 'Shrimp Tacos', 22, 9.99, 'Taco'),
    (23, 'Vegetable Samosa', 23, 3.49, 'Appetizer'),
    (24, 'Steak Frites', 24, 18.99, 'Entree'),
    (25, 'Chocolate Cake', 25, 4.99, 'Dessert');




-- Dim_Inventory Table

-- CREATE BY Josh Oxner CREDIT to github Account: JoshOx3000
CREATE TABLE Dim_Inventory (
    inventory_id INT PRIMARY KEY,
    ingredient_id INT NOT NULL,
    quantity_in_stock INT NOT NULL,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id)
);

-- Populate Dim_Inventory Table
INSERT INTO Dim_Inventory (inventory_id, ingredient_id, quantity_in_stock)
VALUES
    (1, 1, 50),
    (2, 2, 30),
    (3, 3, 20),
    (4, 4, 100),
	(5, 5, 60),
	(6, 6, 80),
	(7, 7, 25),
	(8, 8, 45),
	(9, 9, 15),
	(10, 10, 90),
	(11, 1, 40),
	(12, 2, 35),
	(13, 3, 10),
	(14, 4, 95),
	(15, 5, 70),
	(16, 6, 85),
	(17, 7, 30),
	(18, 8, 50),
	(19, 9, 20),
	(20, 10, 85),
	(21, 1, 55),
	(22, 2, 25),
	(23, 3, 12),
	(24, 4, 75),
	(25, 5, 65)
;

-- fact table creation

-- CREATE BY Josh Oxner CREDIT to github Account: JoshOx3000
CREATE TABLE Fact_Orders (
    order_id INT PRIMARY KEY, 
    customer_id INT NOT NULL, 
    item_id INT NOT NULL, 
    order_date DATE NOT NULL, 
    total_amount DECIMAL(10, 2) NOT NULL, 
    quantity INT NOT NULL, 
    staff_id INT NOT NULL, 
    shift_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Dim_Customers(customer_id),  -- Assuming a Customers table exists
    FOREIGN KEY (item_id) REFERENCES Dim_Items(item_id),  -- Reference to Dim_Items table
    FOREIGN KEY (staff_id) REFERENCES Dim_Staff(staff_id),  -- Assuming a Staff table exists
    FOREIGN KEY (shift_id) REFERENCES Dim_Shifts(shift_id)  -- Assuming a Shifts table exists
);





-- Fact_Orders Table
-- Create By JoshOx3000
CREATE TABLE Fact_Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    staff_id INT,
    order_date DATETIME,
    order_total DECIMAL(10, 2),
    order_status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Dim_Customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES Dim_Staff(staff_id)
);




-- Insert Data into Fact_Orders Table
INSERT INTO Fact_Orders (order_id, customer_id, staff_id, order_date, order_total, order_status)
VALUES 
    (1, 1, 2, '2024-11-01 12:00:00', 35.75, 'Completed'),
    (2, 2, 3, '2024-11-01 12:30:00', 22.50, 'Completed'),
    (3, 3, 4, '2024-11-01 13:00:00', 18.90, 'Completed'),
    (4, 4, 5, '2024-11-01 13:30:00', 27.45, 'Pending'),
    (5, 5, 2, '2024-11-01 14:00:00', 39.00, 'Completed'),
    (6, 6, 3, '2024-11-01 14:30:00', 25.75, 'Completed'),
    (7, 7, 4, '2024-11-01 15:00:00', 33.20, 'Completed'),
    (8, 8, 5, '2024-11-01 15:30:00', 40.00, 'Cancelled'),
    (9, 9, 2, '2024-11-01 16:00:00', 28.50, 'Completed'),
    (10, 10, 3, '2024-11-01 16:30:00', 24.95, 'Completed'),
    (11, 11, 4, '2024-11-01 17:00:00', 30.60, 'Pending'),
    (12, 12, 5, '2024-11-01 17:30:00', 38.25, 'Completed'),
    (13, 13, 2, '2024-11-01 18:00:00', 23.00, 'Completed'),
    (14, 14, 3, '2024-11-01 18:30:00', 31.40, 'Completed'),
    (15, 15, 4, '2024-11-01 19:00:00', 26.30, 'Completed'),
    (16, 16, 5, '2024-11-01 19:30:00', 22.90, 'Cancelled'),
    (17, 17, 2, '2024-11-01 20:00:00', 34.60, 'Completed'),
    (18, 18, 3, '2024-11-01 20:30:00', 29.80, 'Pending'),
    (19, 19, 4, '2024-11-01 21:00:00', 27.00, 'Completed'),
    (20, 20, 5, '2024-11-01 21:30:00', 45.10, 'Completed'),
    (21, 21, 2, '2024-11-02 12:00:00', 36.00, 'Completed'),
    (22, 22, 3, '2024-11-02 12:30:00', 20.50, 'Completed'),
    (23, 23, 4, '2024-11-02 13:00:00', 40.75, 'Completed'),
    (24, 24, 5, '2024-11-02 13:30:00', 31.90, 'Pending'),
    (25, 25, 2, '2024-11-02 14:00:00', 19.99, 'Completed')
	;


-- Store Procedures 
-- Submit as team effort via zoom BY Edmond  Credit github Account: Ecar0301,  Mina  Credit github Account: Aallen747, Josh Oxner CREDIT to github Account: JoshOx3000
-- Procedure GetCustomerDetails 
CREATE PROCEDURE GetCustomerDetails
    @CustomerID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.customer_id,
        c.name AS CustomerName,
        c.email,
        c.phone_number,
        a.street,
        a.city,
        a.state,
        a.zip_code
    FROM 
        Dim_Customers c
    LEFT JOIN 
        Dim_Addresses a ON c.customer_id = a.customer_id
    WHERE 
        c.customer_id = @CustomerID;
END;
GO



-- exec store procedure, test if store procedure works properly
EXEC GetCustomerDetails @CustomerID = 1;

EXEC GetCustomerDetails @CustomerID = 2;


-- Create a table to log low inventory alerts
CREATE TABLE Low_Inventory_Log (
    log_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing ID
    inventory_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    quantity_in_stock INT NOT NULL,
    alert_time DATETIME DEFAULT GETDATE(), -- Log the alert timestamp
    FOREIGN KEY (inventory_id) REFERENCES Dim_Inventory(inventory_id),
	FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id)
);


-- added triggers to the Mike_Pizza_DB
-- Trigger to log low inventory on INSERT
CREATE TRIGGER trg_low_inventory_insert
ON Dim_Inventory
AFTER INSERT
AS
BEGIN
    INSERT INTO Low_Inventory_Log (inventory_id, ingredient_id, quantity_in_stock)
    SELECT 
        i.inventory_id,
        i.ingredient_id,
        i.quantity_in_stock
    FROM INSERTED i
    WHERE i.quantity_in_stock < 20; -- Define low inventory threshold
END;

-- Trigger to log low inventory on UPDATE
CREATE TRIGGER trg_low_inventory_update
ON Dim_Inventory
AFTER UPDATE
AS
BEGIN
    INSERT INTO Low_Inventory_Log (inventory_id, ingredient_id, quantity_in_stock)
    SELECT 
        u.inventory_id,
        u.ingredient_id,
        u.quantity_in_stock
    FROM INSERTED u
    WHERE u.quantity_in_stock < 20; -- Define low inventory threshold
END

-- Test INSERT Trigger
INSERT INTO Dim_Inventory (inventory_id, ingredient_id, quantity_in_stock)
VALUES (26, 1, 15);

-- Test UPDATE Trigger
UPDATE Dim_Inventory
SET quantity_in_stock = 10
WHERE inventory_id = 1; -- Logs to Low_Inventory_Log because quantity is now less


-- Check the log table to confirm
SELECT *
FROM Low_Inventory_Log
;

--work sucessfully
