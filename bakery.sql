CREATE DATABASE BakeryDB;
USE BakeryDB;
 CREATE TABLE Customers(CustomerID INT PRIMARY KEY
      ,CustomerName NVARCHAR(50)
      ,City NVARCHAR(50)
      ,PostalCode VARCHAR(10)
      ,Country VARCHAR(15));
 USE BakeryDB;
 INSERT INTO Customers(CustomerID
      ,CustomerName
      ,City 
      ,PostalCode 
      ,Country ) VALUES('1','Ali',	'Dubai',	'58063'.	'UAE')
,('2','Akshay',	'Kochi',	'695311',	'India'),
('3','Chan',	'Xining',	'S-896 23',	'China');
USE BakeryDB;
SELECT * FROM Customers WHERE Country='India';