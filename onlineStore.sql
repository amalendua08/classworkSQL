CREATE DATABASE OnlineStore;
USE OnlineStore;
USE OnlineStore;
CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    Sold INT
);

USE OnlineStore;
INSERT INTO Products (ProductName, Category, Price, Stock, Sold)
VALUES
('Wireless Mouse', 'Electronics', 800, 50, 35),
('Bluetooth Speaker', 'Electronics', 1200, 30, 20),
('Office Chair', 'Furniture', 3000, 15, 10),
('Coffee Table', 'Furniture', 1500, 10, 5),
('LED Bulb', 'Utilities', 200, 100, 80),
('Electric Kettle', 'Utilities', 900, 20, 2);

USE OnlineStore;
SELECT 
    MAX(Price) AS HighestPrice,
    MIN(Price) AS LowestPrice
FROM Products;

USE OnlineStore;
SELECT 
    Category,
    SUM(Sold) AS TotalSold
FROM Products
GROUP BY Category;

USE OnlineStore;
SELECT 
    Category,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY Category
HAVING COUNT(*) > 1;

USE OnlineStore;
SELECT *
FROM Products
WHERE Sold BETWEEN 10 AND 40;

USE OnlineStore;
SELECT *
FROM Products
WHERE ProductName LIKE '%Chair%';

USE OnlineStore;
SELECT 
    ProductName AS [Item],
    Sold AS [Units Sold]
FROM Products;

USE OnlineStore;
SELECT *
FROM Products
WHERE Price > (
    SELECT AVG(Price) 
    FROM Products
);

USE OnlineStore;
SELECT *
FROM Products
WHERE Category IN (
    SELECT Category
    FROM Products
    WHERE Stock > 30
);