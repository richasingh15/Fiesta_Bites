USE Fiesta_Bites;

INSERT INTO Customer(CustID,CustName,CustEmail,CustStreetNumber,City,State,Zipcode,CustomerPassword,CustomerPhone)
VALUES('0011', 'Richa', 'singh.ric@husky.neu.edu', '1167 Boylston Street', 'Boston', 'MA', '02215', 'pass@123', '1234567890'),
('0002', 'Tanishka', 'porwal.ta@husky.neu.edu', '1178 Boylston Street', 'Boston', 'MA', '02215', 'pass@456', '8130505921'),
('0003', 'Niyant', 'dave.ni@husky.neu.edu', '1179 Boylston Street', 'Boston', 'MA', '02215', 'pass@789', '9415410509'),
('0004', 'Vivek', 'kulkarni.v@husky.neu.edu', 'Horadan Way', 'Boston', 'MA', '02115', 'pass@000', '9836225100'),
('0005', 'Adwait', 'sathe.a@husky.neu.edu', 'Mission Hill', 'Boston', 'MA', '02111', 'pass@111', '9836225200'),
('0006', 'Avi', 'tiwari.av@husky.neu.edu', '23 Hemenway Street', 'Boston', 'MA', '02115', 'pass@222', '1234567891'),
('0007', 'Manish', 'ramani.ma@husky.neu.edu', 'Jamaica Plain', 'Boston', 'MA', '02221', 'pass@333', '1234567892'),
('0008', 'Frank', 'george.f@gmail.com', 'Mission Main', 'Boston', 'MA', '02216', 'pass@444', '1234567893'),
('0009', 'Nina', 'dobrev.n@yahoo.com', 'Westland Avanue', 'Boston', 'MA', '02217', 'pass@555', '1234567894'),
('0010', 'Sophie', 'turner@gmail.com', '1111 Boylston Street', 'Boston', 'MA', '02215', 'pass@666', '1234567895');


INSERT INTO City(CityID,CityName,ZipCode)
VALUES(1,'Boston','02215'),
(2,'Boston','02216'),
(3,'Boston','02217'),
(4,'Boston','02111'),
(5,'Cambridge','00011'),
(6,'Waltham','12345'),
(7,'Malbourogh','67890'),
(8,'Boston','02218'),
(9,'Waltham','67891'),
(10, 'Waltham','91234');


INSERT INTO Resturant(ResturantID,CityID,ResturantName,ResturantStreetNumber,City,State,Zipcode,ResturantPhone)
VALUES('11', 1, 'Pho Basil', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('12', 1, 'Wendys', 'Boylston Street', 'Boston', 'MA', '02215','4512309876'),
('13', 5, 'ChinaTown', '50Cambridge', 'Cambrigde', 'MA', '00011','1652309756'),
('14', 3, 'Boston Burgur', 'Boylston Street', 'Boston', 'MA', '02217','1234567876'),
('15', 6, 'KFC', '66WalthamStreet', 'Waltham', 'MA', '12345','7845623400'),
('16', 4, 'Indian Quality', 'Boylston Street', 'Boston', 'MA', '02111','1983409723'),
('17', 2, 'Shake Shack', 'Newbury Street', 'Boston', 'MA', '02216','6248903461'),
('18', 7, 'Dominos', '75 Malborough', 'Malbourough', 'MA', '67890','5811459045'),
('19', 10, 'McDonalds', '52 Walatham', 'Waltham', 'MA', '91234','9725868969'),
('20', 8, 'Kashmir', 'Mission Main', 'Boston', 'MA', '02218', '3790654178'),
('21', 9, 'Blaze', '22 Waltham Street', 'Waltham', 'MA', '67891','8924804587');



INSERT INTO OrderDetails(OrderID, TotalAmount, AmountPaid, OrderStatus, Quantity, Date)
VALUES('01',100.0,100.0,'Completed', 1, '2020-07-28'),
('02',150.0,150.0,'Completed', 2, '2020-07-27'),
('03',100.0,100.0,'Completed', 4, '2020-07-27'),
('04',50.0,50.0,'Completed', 1, '2020-07-26'),
('05',315.0,315.0,'Completed', 4, '2020-07-25'),
('06',100.0,100.0,'Completed', 1, '2020-07-25'),
('07',30.0,30.0,'Completed', 1, '2020-07-24'),
('08',120.0,120.0,'Completed', 2, '2020-07-24'),
('09',60.0,60.0,'Completed', 1, '2020-07-24'),
('010',55.0,55.0,'Completed', 2, '2020-07-24');



INSERT INTO DeliveryDriver(DeliveryManID, DeliveryManName, DeliveryManEmail, DeliveryManPhone, City)
VALUES('100', 'Frank Anthony', 'franka@gmail.com','3267095490','Boston'),
('99', 'Peter K', 'peterk@gmail.com','8923760861','Boston'),
('98', 'Daniel Smith', 'smithdan@gmail.com','9823098736','Boston'),
('97', 'Rosy', 'rosy@yahoo.com','1638095389','Cambridge'),
('96', 'Charles Babbage', 'charles.b@gmail.com','7290469289','Cambridge'),
('95', 'Olivia', 'olivia@gmail.com','7392671907','Cambridge'),
('94', 'Michael J', 'j.mike@gmail.com','8294187037','Cambridge'),
('93', 'Mike Floyd', 'floyd.mike@gmail.com','8163819027','Boston'),
('92', 'Zoya', 'zo.456@gmail.com','7835347809','Waltham'),
('91', 'Rocky', 'rock@gmail.com','8217906736','Waltham');

INSERT INTO DeliveryDriver(DeliveryManID, DeliveryManName, DeliveryManEmail, DeliveryManPhone, City)
VALUES('90', 'Jay', 'jay123@gmail.com','4518902768','Malbourogh');



INSERT INTO CustomerOrderDeliveryRest(CustID,ResturantID,DeliveryManID,OrderID)
VALUES('0011','12','100','010'),
('0002','14','99','09'),
('0003','16','98','08'),
('0004','18','90','07'),
('0005','20','93','06'),
('0006','21','92','05'),
('0007','11','93','04'),
('0008','13','94','03'),
('0009','15','91','02'),
('0010','17','100','01');



INSERT INTO Customer_Registration(RegistrationNumber,CustID,CustEmail,CustomerPhone)
VALUES(1,'0011','singh.ric@husky.neu.edu', '1234567890'),
(2,'0002','porwal.ta@husky.neu.edu','8130505921'),
(3,'0003', 'dave.ni@husky.neu.edu','9415410509'),
(4,'0004', 'kulkarni.v@husky.neu.edu', '9836225100'),
(5,'0005',  'sathe.a@husky.neu.edu',  '9836225200'),
(6,'0006', 'tiwari.av@husky.neu.edu',  '1234567891'),
(7,'0007',  'ramani.ma@husky.neu.edu', '1234567892'),
(8,'0008', 'george.f@gmail.com',  '1234567893'),
(9,'0009', 'dobrev.n@yahoo.com','1234567894'),
(10,'0010','turner@gmail.com','1234567895');



INSERT INTO CustomerCareAgents(AgentID,AgentPhone,CasesSolved,AgentRating,AgentName)
VALUES(11,2233667,4,6,'David'),
(12,22336650,2,8,'Walter'),
(14,22336656,3,6,'Sowmya'),
(15,22336687,7,9,'Rakshita'),
(16,22336673,10,9,'Dave'),
(17,22336676,11,7,'Sam'),
(18,22336674,17,8,'Arnold'),
(19,22336678,18,6,'Quinn'),
(111,22336672,2,4,'Joker'),
(112,22336623,8,7,'Batman');



INSERT INTO CustomerRating(CustID,CustName,OrderID,RestaurantID,Rating)
VALUES('0011','Richa','010','12',8),
('0002','Tanishka','09','14',2),
('0003','Niyant','08','16',7),
('0004','Vivek','07','18',6),
('0005','Adwait','06','20',4),
('0006','Avi','05','21',9),
('0007','Manish','04','11',7),
('0008','Frank','03','13',8),
('0009','Nina','02','15',6),
('0010','Sophie','01','17',5);



 INSERT INTO dbo.Menu
 VALUES ('1', '11', 'Burrito Bowl', 'A burrito bowl is all of your favorite burrito filling ingredients', 17),
 ('2', '12', 'Chicken Wings','A Buffalo wing, in the cuisine of the United States, is an unbreaded chicken wing section that is generally deep-fried then coated',7),
 ('3', '13', 'Manchurian','Cabbage balls dipped in gravey and chiniese sauces. ',15),
 ('4', '14', 'Black Bean Patty Burger','Perfect dish. These are batonnet or allumette-cut deep-fried potatoes. ',8),
 ('5', '15', 'FrenchFries','Perfect dish. These are batonnet or allumette-cut deep-fried potatoes. ',4),
 ('6', '16', 'Kadhai Paneer','Cottage cheese cubes, blended with indian spices and gravey',16),
 ('7', '17', 'Quesadilla', 'A Quesadilla is all of your favorite burrito filling ingredients – protein, cheese, corn, black beans, tomatoes, salsa, sour cream, guacamole etc. .', 12),
 ('8', '18', 'Cheese Burst Pizza','Cheese Melting in the mouth, corn, green peppers, onions topping on flat bread ',20),
 ('9', '19', 'Mud Pie Shake','Chocolate and cookies blended together to quench your thirst ',5),
 ('10', '20', 'Kashmiri Biryani','Rice cooked with vegetables and perfect Aroma',8),
 ('11', '21', 'Chicken Alfredo pizza','Pizza topped with alfredo sauce and grilled chicken ',23);



 INSERT INTO dbo.DiscountOffers
 VALUES ('50', '11', 'FIESTA2020', '2020-12-31'),
 ('51', '12', 'LOCKDOWN','2020-07-31'),
 ('52', '13', 'HUNGRY','2021-01-01'),
 ('53', '14', 'SAVEMORE ','2021-02-01'),
 ('54', '15', 'LUNCH TREAT ','2021-12-01'),
 ('55', '15', 'HAPPY','2021-03-20'),
 ('56', '17', 'GARBFAST', '2021-01-01'),
 ('57', '18', 'Cheese','2020-12-02'),
 ('58', '18', 'FOODCARNIVAL','2020-12-20'),
 ('59', '20', 'Biryani','2020-09-15'),
 ('60', '16', 'HAPPYHOUR','2020-09-15');



 INSERT INTO dbo.Payment
 VALUES ('50', 'porwal.ta@husky.neu.edu', 'BOFA', 00124578,'147'),
 ('51', 'dave.ni@husky.neu.edu', 'SANTANDER', 65498751, '369'),
 ('52', 'porwal.ta@husky.neu.edu', 'BOFA',00124578, '147'),
 ('53', 'sathe.a@husky.neu.edu', 'BOFA ',45967823, '456'),
 ('54', 'george.f@gmail.com', 'SANTANDER ',00124575, '148'),
 ('55', 'tiwari.av@husky.neu.edu', 'BOFA',45967856, '458'),
 ('56', 'singh.ric@husky.neu.edu', 'BOFA', 07584585, '143'),
 ('57', 'turner@gmail.com', 'CITYBANK',78952315, '852'),
 ('58', 'ramani.ma@husky.neu.edu', 'CITYBANK',74569211, '478'),
 ('59', 'dobrev.n@yahoo.com', 'SANTANDER', 14685645, '333'),
 ('60', 'singh.ric@husky.neu.edu', 'BOFA',78945615, '145');



 INSERT INTO dbo.CustomerOrderHistory
  Values ('01','0002', '50','11','50','11'),
  ('010', '0003','51','12','51','12'),
  ('02','0004','52','13','52','14'),
  ('03','0005','53','14','53','15'),
  ('04','0006','54','15','54','16'),
  ('05','0007','55','16','55','17'),
  ('06','0008','56','17','56','18'),
  ('07','0009','57','18','57','19'),
  ('08','0010','58','19','58','111'),
  ('09','0011','59','20','59','112');

  Select * from OrderDetails;
