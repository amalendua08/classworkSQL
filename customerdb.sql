CREATE DATABASE CustomerDB;
USE CustomerDB;
 CREATE TABLE Customers (
      CustomerID INT PRIMARY KEY,
      CustomerName NVARCHAR(50),
      City NVARCHAR(50),
      PostalCode VARCHAR(10),
      Country VARCHAR(15)
  );
  USE CustomerDB;
    INSERT INTO Customers (CustomerName, City, PostalCode, Country)
  VALUES ('Alfred','Berlin','12209','Germany'),
  ('Kiran','Delhi','05021','India'),
  ('Chong','Wuhan','S-958 22','China'),
  ('Suresh','Mumbai','05023','India'),
  ('Anna','London','WA1 1DP','UK'),
  ('Ching','Beijing','S-958 22','China'),
  ('Aneesh','Delhi','05021','India');
  USE CustomerDB;
  INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Allison', 'New York', 'US');