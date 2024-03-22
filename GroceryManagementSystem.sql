-- Check if database exists, if not, create it
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'GroceryManagementSystem')
BEGIN
    CREATE DATABASE GroceryManagementSystem;
END
GO

-- Use the database
USE GroceryManagementSystem;
GO

-- Table for storing information about customers
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Customers')
BEGIN
    CREATE TABLE Customers (
        CustomerID INT IDENTITY(1,1) PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Email VARCHAR(100) UNIQUE NOT NULL,
        Phone VARCHAR(20),
        Address VARCHAR(255)
    );
END
GO

-- Table for storing information about products
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Products')
BEGIN
    CREATE TABLE Products (
        ProductID INT IDENTITY(1,1) PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Description TEXT,
        Price DECIMAL(10, 2) NOT NULL,
        StockQuantity INT NOT NULL
    );
END
GO

-- Table for storing information about orders
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Orders')
BEGIN
    CREATE TABLE Orders (
        OrderID INT IDENTITY(1,1) PRIMARY KEY,
        CustomerID INT,
        OrderDate DATETIME DEFAULT GETDATE(),
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    );
END
GO

-- Table for storing information about order items
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'OrderItems')
BEGIN
    CREATE TABLE OrderItems (
        OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
        OrderID INT,
        ProductID INT,
        Quantity INT NOT NULL,
        Price DECIMAL(10, 2) NOT NULL,
        FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    );
END
GO

-- Table for storing information about employees
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Employees')
BEGIN
    CREATE TABLE Employees (
        EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Email VARCHAR(100) UNIQUE NOT NULL,
        Phone VARCHAR(20),
        Address VARCHAR(255)
    );
END
GO

-- Table for storing information about suppliers
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Suppliers')
BEGIN
    CREATE TABLE Suppliers (
        SupplierID INT IDENTITY(1,1) PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Email VARCHAR(100) UNIQUE NOT NULL,
        Phone VARCHAR(20),
        Address VARCHAR(255)
    );
END
GO

-- Table for storing information about product suppliers
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'ProductSuppliers')
BEGIN
    CREATE TABLE ProductSuppliers (
        ProductSupplierID INT IDENTITY(1,1) PRIMARY KEY,
        ProductID INT,
        SupplierID INT,
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
        FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
    );
END
GO
