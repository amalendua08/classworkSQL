CREATE DATABASE BookStore1DB;
USE BookStore1DB;
CREATE TABLE Authors (
    AuthorID INT IDENTITY(1,1) PRIMARY KEY,
    AuthorName VARCHAR(100),
    Country VARCHAR(50)
);

USE BookStore1DB;
CREATE TABLE Books (
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

USE BookStore1DB;
INSERT INTO Authors (AuthorName, Country)
VALUES
('R. K. Narayan', 'India'),
('Agatha Christie', 'UK'),
('Paulo Coelho', 'Brazil');

USE BookStore1DB;
INSERT INTO Books (Title, AuthorID)
VALUES
('Malgudi Days', 1),
('The Alchemist', 3),
('Murder on the Orient Express', 2),
('Death on the Nile', 2);

USE BookStore1DB;
SELECT Books.Title, Authors.AuthorName
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID;

USE BookStore1DB;
SELECT Authors.AuthorName, Books.Title
FROM Authors
LEFT JOIN Books ON Authors.AuthorID = Books.AuthorID;

USE BookStore1DB;
SELECT Books.Title, Authors.AuthorName
FROM Books
RIGHT JOIN Authors ON Books.AuthorID = Authors.AuthorID;

USE BookStore1DB;
SELECT Authors.AuthorName, Books.Title
FROM Authors
FULL JOIN Books ON Authors.AuthorID = Books.AuthorID;


USE BookStore1DB;
SELECT Authors.AuthorName, Books.Title
FROM Authors
CROSS JOIN Books;




