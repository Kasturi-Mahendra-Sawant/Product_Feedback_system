CREATE TABLE Users
(
UserId INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(100),
Email VARCHAR(100) UNIQUE,
Mobile VARCHAR(20),
Password VARCHAR(100),
Address VARCHAR(200),
Role VARCHAR(20)
);

CREATE TABLE Admin
(
AdminId INT PRIMARY KEY IDENTITY(1,1),
Username VARCHAR(50),
Password VARCHAR(100)
);

CREATE TABLE Products
(
ProductId INT PRIMARY KEY IDENTITY(1,1),
ProductName VARCHAR(100),
Description VARCHAR(200),
Price DECIMAL(10,2)
);

CREATE TABLE Feedback
(
FeedbackId INT PRIMARY KEY IDENTITY(1,1),
UserName VARCHAR(100),
ProductName VARCHAR(100),
Rating VARCHAR(20),
Comment VARCHAR(500),
Date DATETIME DEFAULT GETDATE()
);





INSERT INTO Admin (Username, Password)
VALUES ('admin', 'admin123');

INSERT INTO Products (ProductName, Description, Price)
VALUES 
('Smartphone X', 'Latest 5G smartphone', 24999),
('Laptop Pro', 'High performance laptop', 54999),
('Wireless Earbuds', 'Noise cancelling earbuds', 2999),
('Sports Shoes', 'Comfortable running shoes', 1999),
('Smart Watch', 'Fitness tracking smart watch', 3499);