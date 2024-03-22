-- Insert dummy data into Customers table
INSERT INTO Customers (Name, Email, Phone, Address)
VALUES
    ('John Doe', 'john.doe@example.com', '123-456-7890', '123 Main St'),
    ('Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Elm St');

-- Insert dummy data into Products table
INSERT INTO Products (Name, Description, Price, StockQuantity)
VALUES
    ('Apples', 'Fresh red apples', 2.50, 100),
    ('Bananas', 'Ripe yellow bananas', 1.75, 150);

-- Insert dummy data into Orders table
INSERT INTO Orders (CustomerID)
VALUES
    (1),
    (2);

-- Insert dummy data into OrderItems table
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price)
VALUES
    (1, 1, 3, 7.50),
    (2, 2, 2, 3.50);

-- Insert dummy data into Employees table
INSERT INTO Employees (Name, Email, Phone, Address)
VALUES
    ('Alice Johnson', 'alice.johnson@example.com', '555-123-4567', '789 Oak St'),
    ('Bob Smith', 'bob.smith@example.com', '555-987-6543', '321 Pine St');

-- Insert dummy data into Suppliers table
INSERT INTO Suppliers (Name, Email, Phone, Address)
VALUES
    ('Fresh Produce Inc.', 'info@freshproduce.com', '800-123-4567', '123 Farm Rd'),
    ('Tropical Fruits Co.', 'sales@tropicalfruits.com', '800-987-6543', '456 Beach Blvd');

-- Insert dummy data into ProductSuppliers table
INSERT INTO ProductSuppliers (ProductID, SupplierID)
VALUES
    (1, 1),
    (2, 2);
