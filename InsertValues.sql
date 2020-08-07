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

INSERT INTO Customer(CustID,CustName,CustEmail,CustStreetNumber,City,State,Zipcode,CustomerPassword,CustomerPhone)
VALUES
('0032', 'Mina1', 'mina1@gmail.com', 'Longwood', 'New York', 'NY', '02223', 'pass@888', '8123096478'),
('0090', 'Mina2', 'mina2@gmail.com', 'Saint Germaine', 'Miami', 'FL', '01111', 'pass@999', '8612560956'),
('0089', 'Mina3', 'mina3@gmail.com', 'Peterborough', 'Boston', 'MA', '02211', 'pass@000', '9256728901'),
('0088', 'Mina4', 'mina4@gmail.com', '123BoylstonSt', 'Portland', 'MA', '09127', 'pass@981', '9729010821'),
('0087', 'Mina5', 'mina5@gmail.com', 'CityPalace', 'CapeCod', 'MA', '02211', 'pass@912', '1234567890'),
('0086', 'Mina6', 'mina6@gmail.com', 'Macbeth Street4', 'Dallas', 'TX', '00001', 'pass@001', '3456789017'),
('0085', 'Mina7', 'mina7@gmail.com', 'Macbeth Street8', 'Dallas', 'TX', '02111', 'pass@002', '8098481447'),
('0084', 'Mina8', 'mina8@gmail.com', 'Macbeth Street10', 'Austin', 'TX', '02333', 'pass@003', '9027291279'),
('0083', 'Mina9', 'mina9@gmail.com', 'Macbeth Street11', 'Austin', 'TX', '09122', 'pass@774', '9248100260'),
('0082', 'Mina10', 'mina10@gmail.com', 'Macbeth Street32', 'Austin', 'TX', '02092', 'pass@775', '5628190789'),
('0081', 'Mina11', 'mina11@gmail.com', 'Macbeth Street11', 'Austin', 'TX', '02111', 'pass@715', '8297829018'),
('0023', 'Nina15', 'nina15@gmail.com', 'Street12', 'New York', 'NY', '02233', 'pass1@777', '8290137891'),
('0024', 'Mina12', 'mina12@gmail.com', 'Street39', 'New York', 'NY', '02232', 'pass2@777', '8290137892'),
('0025', 'Mina14', 'mina14@gmail.com', 'Street40', 'New York', 'NY', '02244', 'pass3@777', '8290137893'),
('0026', 'Mina16', 'mina16@gmail.com', 'Street41', 'New York', 'NY', '02245', 'pass4@777', '8290137894'),
('0027', 'Mina17', 'mina17@gmail.com', 'Street47', 'New York', 'NY', '02289', 'pass5@777', '8290137895'),
('0028', 'Mina18', 'mina18@gmail.com', 'Street80', 'New York', 'NY', '02299', 'pass6@777', '8290137896'),
('0029', 'Mina19', 'mina19@gmail.com', 'Street81', 'New York', 'NY', '02200', 'pass7@777', '8290137897'),
('0030', 'Mina20', 'mina20@gmail.com', 'Street82', 'New York', 'NY', '02221', 'pass8@777', '8290137898'),
('0031', 'Mina21', 'mina21@gmail.com', 'Street83', 'New York', 'NY', '02298', 'pass9@777', '8290137899'),
('0033', 'Mina22', 'mina22@gmail.com', 'Street84', 'New York', 'NY', '02290', 'pass0@777', '8290137888');



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

INSERT INTO Resturant(ResturantID,CityID,ResturantName,ResturantStreetNumber,City,State,Zipcode,ResturantPhone)
VALUES('22', 1, 'Mexican Res', 'Boylston StreetII', 'Boston', 'MA', '02215','6789012345'),
('23', 2, 'Qudoba', 'Boylston Street', 'Boston', 'MA', '02216','6789012789'),
('24', 3, 'Tatte', 'Boylston Street', 'Boston', 'MA', '02217','6789012346'),
('25', 4, 'Chipotale', 'Boylston Street', 'Boston', 'MA', '02218','6789012344'),
('26', 5, 'Popoyes', 'Boylston StreetIII', 'Cambridge', 'MA', '00111','6789845609'),
('27', 6, 'Sweet Tomato', 'Boylston StreetIV', 'Waltham', 'MA', '12345','6789000000'),
('28', 7, 'SpicyOne', 'Boylston StreetV', 'Malbourogh', 'MA', '67890','6789098112'),
('29', 1, 'Dunkin Donot', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('30', 1, 'Sandwedges', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('31', 1, 'Qualityone', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('32', 1, 'StreetFood', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('33', 1, 'UHop', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('34', 1, 'Thai Curry', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('35', 1, 'Swagat', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('36', 1, 'Pho BasilII', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('37', 1, 'Chutneys', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('38', 1, 'BurgerCo', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('39', 1, 'JPLicks', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('40', 1, 'KwalityKing', 'Boylston Street', 'Boston', 'MA', '02215','6789012345'),
('41', 1, 'PhoIII', 'Boylston Street', 'Boston', 'MA', '02215','6789012345');



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

INSERT INTO OrderDetails(OrderID, TotalAmount, AmountPaid, OrderStatus, Quantity, Date)
VALUES('015',100.0,100.0,'Completed', 1, '2020-07-31');



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
  
  INSERT INTO Customer_Registration(RegistrationNumber,CustID,CustEmail,CustomerPhone)
VALUES
(11, '0032', 'mina1@gmail.com', '8123096478'),
(12, '0090', 'mina2@gmail.com', '8612560956'),
(13, '0089','mina3@gmail.com', '9256728901'),
(14, '0088', 'mina4@gmail.com', '9729010821'),
(15, '0087', 'mina5@gmail.com', '1234567890'),
(16, '0086', 'mina6@gmail.com', '3456789017'),
(17, '0085', 'mina7@gmail.com','8098481447'),
(18, '0084', 'mina8@gmail.com', '9027291279'),
(19, '0083', 'mina9@gmail.com', '9248100260'),
(20, '0082', 'mina10@gmail.com', '5628190789'),
(21 ,'0081', 'mina11@gmail.com', '8297829018'),
(22 ,'0023', 'nina15@gmail.com', '8290137891'),
(23, '0024', 'mina12@gmail.com', '8290137892'),
(24, '0025', 'mina14@gmail.com', '8290137893'),
(25, '0026', 'mina16@gmail.com', '8290137894'),
(26, '0027', 'mina17@gmail.com', '8290137895'),
(27, '0028', 'mina18@gmail.com', '8290137896'),
(28, '0029', 'mina19@gmail.com', '8290137897'),
(29, '0030', 'mina20@gmail.com', '8290137898'),
(30, '0031', 'mina21@gmail.com', '8290137899'),
(31, '0033', 'mina22@gmail.com', '8290137888');


INSERT INTO OrderDetails(OrderID, TotalAmount, AmountPaid, OrderStatus, Quantity, Date)
VALUES
('B1',155.0,155.0,'Completed', 3, '2020-07-22'),
('B2',65.0,65.0,'Completed', 4, '2020-07-20'),
('B3',80.0,80.0,'Completed', 5, '2020-07-19'),
('B4',85.0,85.0,'Completed', 2, '2020-07-18'),
('B5',25.0,25.0,'Completed', 1, '2020-07-15'),
('B6',60.0,60.0,'Completed', 6, '2020-07-12'),
('B7',70.0,70.0,'Completed', 10, '2020-07-12'),
('B8',30.0,30.0,'Completed', 4, '2020-07-12'),
('B9',40.0,40.0,'Completed', 5, '2020-07-10'),
('B10',55.0,55.0,'Completed', 7, '2020-07-10'),
('B11',20.0,20.0,'Completed', 8, '2020-07-09'),
('B12',90.0,90.0,'Completed', 8, '2020-07-08'),
('B13',200.0,200.0,'Completed', 2, '2020-07-07'),
('B14',455.0,455.0,'Completed', 9, '2020-07-07'),
('B15',355.0,355.0,'Completed', 10, '2020-07-07'),
('B16',515.0,515.0,'Completed', 6, '2020-07-07'),
('B17',550.0,550.0,'Completed', 6, '2020-07-07'),
('B18',50.0,50.0,'Completed', 6, '2020-07-07'),
('B19',600.0,600.0,'Completed', 3, '2020-07-03'),
('B20',550.0,550.0,'Completed', 4, '2020-07-03'),
('B21',450.0,450.0,'Completed', 2, '2020-07-02'),
('B22',555.0,555.0,'Completed', 1, '2020-07-02'),
('B23',500.0,500.0,'Completed', 1, '2020-07-02'),
('B24',55.0,55.0,'Completed', 4, '2020-07-02'),
('B25',65.0,65.0,'Completed', 4, '2020-06-30'),
('B26',75.0,75.0,'Completed', 4, '2020-06-30'),
('B27',95.0,95.0,'Completed', 3, '2020-06-29'),
('B28',175.0,175.0,'Completed', 5, '2020-06-28'),
('B29',55.0,55.0,'Completed', 5, '2020-06-28'),
('B30',55.0,55.0,'Completed', 6, '2020-06-26'),
('B31',550.0,550.0,'Completed', 2, '2020-06-25'),
('B32',500.0,500.0,'Completed', 5, '2020-06-25'),
('B33',165.0,165.0,'Completed', 2, '2020-06-23'),
('B34',535.0,535.0,'Completed', 5, '2020-06-22'),
('B35',325.0,325.0,'Completed', 4, '2020-06-22'),
('B36',400.0,400.0,'Completed', 4, '2020-06-21'),
('B37',225.0,225.0,'Completed', 4, '2020-06-19'),
('B38',255.0,255.0,'Completed', 8, '2020-06-18'),
('B39',355.0,355.0,'Completed', 8, '2020-06-18'),
('B40',55.0,55.0,'Completed', 8, '2020-06-18');

INSERT INTO CustomerOrderDeliveryRest(CustID,ResturantID,DeliveryManID,OrderID)
VALUES
('0027','34','92','B1'),
('0023','40','93','B10'),
('0087','30','96','B11'),
('0029','31','92','B12'),
('0084','39','97','B13'),
('0027','33','98','B14'),
('0028','31','96','B15'),
('0031','27','93','B16'),
('0033','33','95','B17'),
('0087','41','91','B18'),
('0025','29','98','B19'),
('0024','35','93','B2'),
('0026','27','95','B20'),
('0083','41','96','B21'),
('0030','25','98','B22'),
('0086','39','97','B23'),
('0090','37','94','B24'),
('0082','27','98','B25'),
('0032','38','91','B26'),
('0089','27','97','B27'),
('0081','24','94','B28'),
('0082','23','90','B29'),
('0030','29','98','B3'),
('0085','28','95','B30'),
('0029','36','97','B31'),
('0088','26','95','B32');

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
('0010','Sophie','01','17',5),
('0023','Nina15','B1','25',6),
('0024'	,'Mina12','B10','21',8),
('0025','Mina14','B11','13',6),
('0026','Mina16','B12','31',9),
('0027','Mina17','B13','41',6),
('0028','Mina18','B14','32',6),
('0029','Mina19','B15','22',4),
('0030','Mina20','B16','38',1),
('0031','Mina21','B17','33',7),
('0032','Mina1','B18','36',4),
('0033','Mina22','B19','34',6),
('0081','Mina11','B2','20',6),
('0082','Mina10','B20','11',5),
('0083','Mina9','B21','23',9),
('0084','Mina8','B22','40',3),
('0085','Mina7','B23','16',7),
('0086','Mina6','B24','17',8),
('0087','Mina5','B25','16',7),
('0088','Mina4','B26','19',4),
('0089','Mina3','B27','39',9),
('0090','Mina2','B28','37',3);
