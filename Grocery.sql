CREATE DATABASE GroceryStoreDB;
USE GroceryStoreDB;
CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);
USE GroceryStoreDB;
INSERT INTO Products (ProductName, Category, Price, Stock)
VALUES
('Rice', 'Grains', 45, 100),
('Sugar', 'Grains', 38, 150),
('Apple', 'Fruits', 80, 60),
('Banana', 'Fruits', 30, 120),
('Shampoo', 'Toiletry', 120, 40),
('Soap', 'Toiletry', 35, 90),
('Mango', 'Fruits', 90, 70);
USE GroceryStoreDB;
SELECT  MIN(Price) AS LowestPrice,MAX(Price) AS HighestPrice FROM Products;

USE GroceryStoreDB;
USE GroceryStoreDB;
SELECT COUNT(*) AS TotalProducts, AVG(Price) AS AveragePrice
FROM Products;

USE GroceryStoreDB;
SELECT * FROM Products WHERE Price BETWEEN 30 AND 80;

USE GroceryStoreDB;
SELECT * FROM Products WHERE Category IN ('Grains', 'Toiletry');

USE GroceryStoreDB;
SELECT * FROM Products WHERE ProductName LIKE 'S%';

USE GroceryStoreDB;
SELECT ProductName, Category, Price, Stock FROM Products
UNION ALL
SELECT 'Orange', 'Fruits', 60, 50
UNION ALL
SELECT 'Toothpaste', 'Toiletry', 55, 30;
