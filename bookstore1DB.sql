CREATE DATABASE BookStore1DB;
CREATE TABLE Customers1(CustomerId INT IDENTITY(1,1) PRIMARY KEY,CustomerName NVARCHAR(50),City NVARCHAR(50),PostalCode varchar(15),Country VARCHAR(10);
USE BookStore1DB;
INSERT INTO Customers1(CustomerName,City,PostalCode,Country) VALUES ('Ali','Dubai','58063','UAE'),('Akshay','Kochi','695311','India'),
('Chan','Xining','S-896 23','China'),
('Amina','Kochi','695010','India'),('John','Dubai','58060','UAE'),('David','London','E1 6AN','UK'),('Maria','Mandrid','28001','Spain');
-- 1.Show only the customers who are not from India.
USE BookStore1DB;1
SELECT * FROM Customers1 WHERE NOT Country='India';
-- 2.Display a list of distinct cities from the customer records.
USE BookStore1DB;
SELECT DISTINCT City From Customers1;
-- 3.Show the entire customer list sorted by country in descending order.
USE BookStore1DB;
SELECT * FROM Customers1 ORDER BY Country DESC;