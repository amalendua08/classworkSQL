CREATE DATABASE JoinDB;
USE JoinDB;
CREATE TABLE Students(student_id INT IDENTITY(1,1) PRIMARY KEY,registration_id INT,student_name NVARCHAR(50),course NVARCHAR(50),place VARCHAR(20),phone_number VARCHAR(15));

INSERT INTO Students (registration_id, student_name, course, place, phone_number) 
VALUES ('1000','Anjima','Java','Trivandrum','+911243567890'),
('1001','Cyriac','C++','Hyderabad','+911254646546'),
('1002','Devisree','C#','Chennai','+914566784322'),
('1003','Rahul','Python','Kottayam','+914568907532'),
('1004','Shabin','HTML','Mysore','+919876545456'),
('1005','John','JS','New York','+919054325678'),
('1006','Mary','CSS','Los Angeles','+918689453217'),
('1007','Bob','Bootstrap','Chicago','+916790653421'),
('1008','Alice','Angular','Houston','+918912450990'),
('1009','Tom','React','Phoenix','+914509908778');

USE JoinDB;
CREATE TABLE Birthday(serial_number INT IDENTITY(1,1) PRIMARY KEY,
person_id INT,name NVARCHAR(50),date_of_birth DATE);

USE JoinDB;
INSERT INTO Birthday (person_id, name, date_of_birth)
VALUES('132','Alan','1990-05-12'),
('153','Maneesh','1989-12-25'),
('176','Sony','1994-03-10'),
('166','Rahul','1997-06-14'),
('113','Vishnu','1985-01-29'),
('138','Deepu','2000-07-20'),
('177','John','1992-05-21'),
('178','Mary','1991-08-14'),
('179','Bob','1993-07-11'),
('180','Alice','1990-12-30'),
('181','Steve','1989-04-09');

USE JoinDB;
  SELECT Students.student_name, Birthday.date_of_birth
  FROM Students
  INNER JOIN Birthday
  ON Students.student_name = Birthday.name;

USE JoinDB;
  SELECT Students.student_name, Birthday.date_of_birth
  FROM Students
  LEFT JOIN Birthday
  ON Students.student_name = Birthday.name;

USE JoinDB;
    SELECT Students.student_name, Birthday.date_of_birth
    FROM Students
    RIGHT JOIN Birthday
    ON Students.student_name = Birthday.name;

USE JoinDB;
    SELECT Students.student_name, Birthday.date_of_birth
    FROM Students
    FULL JOIN Birthday
    ON Students.student_name = Birthday.name;

USE JoinDB;
    SELECT Students.student_name, Birthday.date_of_birth
    FROM Students
    CROSS JOIN Birthday;



 