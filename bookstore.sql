CREATE DATABASE BookStore;
USE BookStore;
CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(100),
    PostalCode VARCHAR(10),
    Country VARCHAR(50)
);

USE BookStore;
INSERT INTO Customers (CustomerName, City, PostalCode, Country) VALUES
('Ali', 'Dubai', '58063', 'UAE'),
('Akshay', 'Kochi', '695311', 'India'),
('Chan', 'Xining', 'S-896 23', 'China');

USE BookStore;
ALTER TABLE Customers
ADD Email VARCHAR(100);

USE BookStore;
ALTER TABLE Customers
ALTER COLUMN PostalCode NVARCHAR(20);

USE BookStore;
EXEC sp_rename 'Customers.CustomerName', 'FullName', 'COLUMN';

USE BookStore;
ALTER TABLE Customers
DROP COLUMN City;

USE BookStore;
TRUNCATE TABLE Customers;

USE BookStore;
DROP TABLE Customers;
