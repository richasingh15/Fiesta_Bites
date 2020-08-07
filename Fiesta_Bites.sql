CREATE DATABASE Fiesta_Bites;

USE Fiesta_Bites;

CREATE TABLE Customer
(CustID VARCHAR(30) PRIMARY KEY,
CustName VARCHAR(30),
CustEmail VARCHAR(30),
CustStreetNumber VARCHAR(30),
City VARCHAR(20),
State VARCHAR(25),
Zipcode VARCHAR(5),
CustomerPassword VARCHAR(30),
CustomerPhone VARCHAR(10)
);


CREATE TABLE City
(CityID INT PRIMARY KEY,
CityName VARCHAR(25),
ZipCode VARCHAR(5)
);



CREATE TABLE Resturant
(ResturantID VARCHAR(30) PRIMARY KEY,
CityID INT REFERENCES City(CityID),
ResturantName VARCHAR(30),
ResturantStreetNumber VARCHAR(30),
City VARCHAR(20),
State VARCHAR(25),
Zipcode VARCHAR(5),
ResturantPhone VARCHAR(10)
);


CREATE TABLE OrderDetails
(OrderID VARCHAR(30) PRIMARY KEY,
TotalAmount FLOAT,
AmountPaid FLOAT,
OrderStatus VARCHAR(10),
Quantity INT,
Date DATE
);


--Table OrderHistory to show use of Triggers

CREATE TABLE OrderDetailHistory
(OrderID VARCHAR(30) PRIMARY KEY,
TotalAmount FLOAT,
AmountPaid FLOAT,
OrderStatus VARCHAR(10),
Quantity INT,
Date DATE
);



CREATE TABLE DeliveryDriver
(DeliveryManID VARCHAR(30) PRIMARY KEY,
DeliveryManName VARCHAR(50),
DeliveryManEmail VARCHAR(50),
DeliveryManPhone VARCHAR(10),
City VARCHAR(20)
);


CREATE TABLE CustomerOrderDeliveryRest
(
CustID VARCHAR(30) REFERENCES Customer(CustID),
ResturantID VARCHAR(30) REFERENCES Resturant(ResturantID),
DeliveryManID VARCHAR(30) REFERENCES DeliveryDriver(DeliveryManID),
OrderID VARCHAR(30) REFERENCES OrderDetails(OrderID),
PRIMARY KEY (CustID, ResturantID, DeliveryManID, OrderID));


CREATE TABLE Customer_Registration
(
RegistrationNumber INT NOT NULL PRIMARY KEY,
CustID VARCHAR(30) REFERENCES Customer(CustID),
CustEmail VARCHAR(30),
CustomerPhone VARCHAR(10)
);


CREATE TABLE CustomerCareAgents
(
AgentID INT NOT NULL PRIMARY KEY,
AgentPhone INT NOT NULL,
CasesSolved INT NOT NULL,
AgentRating INT NOT NULL,
AgentName VARCHAR(30)
);


CREATE TABLE CustomerRating
(
CustID VARCHAR(30) FOREIGN KEY(CustID) REFERENCES Customer(CustID),
CustName VARCHAR(30),
OrderID VARCHAR(30) NOT NULL REFERENCES OrderDetails(OrderID),
RestaurantID VARCHAR(30) NOT NULL REFERENCES Resturant(ResturantID),
Rating INT NOT NULL
);


CREATE TABLE dbo.Menu
 (
 MenuID varchar(10) NOT NULL PRIMARY KEY ,
 ResturantID varchar(30) NOT NULL
	REFERENCES dbo.Resturant(ResturantID),
	ItemName varchar(50),
	ItemDescription varchar(500), 
	ItemPrice int NOT NULL
 );


CREATE TABLE dbo.DiscountOffers
 (
 DiscountID varchar(10) NOT NULL PRIMARY KEY ,
 ResturantID varchar(30) NOT NULL
	REFERENCES dbo.Resturant(ResturantID),
	Description varchar(20), 
	ValidityDate Date
 );


 CREATE TABLE dbo.Payment
 (
 PaymentID varchar(10)NOT NULL PRIMARY KEY ,
 CustEmail varchar(30),
	BANK  varchar(20), 
	AccountNumber int,
	CVV VARCHAR(10)
 );




 CREATE TABLE dbo.CustomerOrderHistory
 ( OrderID varchar(30) NOT NULL PRIMARY KEY ,
 CustomerID varchar (30) NOT NULL,
 DiscountID varchar(10) NOT NULL,
 RestaurantID varchar(30) NOT NULL,
 PaymentID varchar(10)NOT NULL ,
 AgentID varchar(30) NOT NULL
 
 );

 SELECT * FROM OrderDetails;
 



