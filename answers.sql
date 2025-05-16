-- ----------------------------
-- Assignment: Database Design and Normalization
-- ----------------------------

-- Question 1: Achieving 1NF 🛠️
-- The Products column contains multiple items in a single field.
-- We normalize it by creating separate rows for each product.

-- Normalized version of ProductDetail into 1NF
-- Assuming you will INSERT this into a new table with structure (OrderID, CustomerName, Product)

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Question 2: Achieving 2NF 🧩
-- The original table has partial dependencies (CustomerName depends only on OrderID).
-- We split the data into two related tables:
-- Orders table: OrderID, CustomerName
-- OrderDetails table: OrderID, Product, Quantity

-- Orders table (eliminates partial dependency)
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- OrderDetails table (fully dependent on OrderID + Product)
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3
