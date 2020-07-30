USE Fiesta_Bites;

--Table level Constraint for Customer EmailID
GO
CREATE FUNCTION dbo.CheckEmail (@emailid varchar(30))
RETURNS int
AS 
BEGIN
DECLARE @result int
 IF (@emailid like '%@%.%')
    SET @result = 0
 ELSE 
    SET @result = 1
 RETURN @result;
END;
GO

ALTER TABLE Customer 
  ADD CONSTRAINT chkEmail
  CHECK (dbo.CheckEmail(CustEmail)=0)

--Table level Constraint for Customer ZipCode

GO
CREATE FUNCTION dbo.CheckZip (@zipcode varchar(5))
RETURNS int
AS 
BEGIN
DECLARE @result int
 IF (@zipcode like '[0-9][0-9][0-9][0-9][0-9]')
    SET @result = 0
 ELSE 
    SET @result = 1
 RETURN @result;
END;
GO

ALTER TABLE Customer 
  ADD CONSTRAINT chkZip
  CHECK (dbo.CheckZip(Zipcode)=0)

--Table level Constraint for Customer PhoneNumber
GO
CREATE FUNCTION dbo.CheckPhone (@phoneNumber varchar(10))
RETURNS int
AS 
BEGIN
DECLARE @result int
 IF (@phoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
    SET @result = 0
 ELSE 
    SET @result = 1
 RETURN @result;
END;
GO

ALTER TABLE Customer 
  ADD CONSTRAINT chkPhone
  CHECK (dbo.CheckPhone(CustomerPhone)=0)

--Table level Constraint for City ZipCode

GO
CREATE FUNCTION dbo.CheckCityZip (@zipcode varchar(5))
RETURNS int
AS 
BEGIN
DECLARE @result int
 IF (@zipcode like '[0-9][0-9][0-9][0-9][0-9]')
    SET @result = 0
 ELSE 
    SET @result = 1
 RETURN @result;
END;
GO

ALTER TABLE City 
  ADD CONSTRAINT chkCityZip
  CHECK (dbo.CheckCityZip(ZipCode)=0)

--Table level Constraint for Resturant ZipCode

GO
CREATE FUNCTION dbo.CheckResZip (@zipcode varchar(5))
RETURNS int
AS 
BEGIN
DECLARE @result int
 IF (@zipcode like '[0-9][0-9][0-9][0-9][0-9]')
    SET @result = 0
 ELSE 
    SET @result = 1
 RETURN @result;
END;
GO

ALTER TABLE Resturant
  ADD CONSTRAINT chkResZip
  CHECK (dbo.CheckResZip(Zipcode)=0)

--Table level Constraint for Resturant PhoneNumber
GO
CREATE FUNCTION dbo.CheckResPhone (@phoneNumber varchar(10))
RETURNS int
AS 
BEGIN
DECLARE @result int
 IF (@phoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
    SET @result = 0
 ELSE 
    SET @result = 1
 RETURN @result;
END;
GO

ALTER TABLE Resturant
  ADD CONSTRAINT chkResPhone
  CHECK (dbo.CheckResPhone(ResturantPhone)=0)



--Table level Constraint for DeliveryDriverEmail
GO
CREATE FUNCTION dbo.CheckDeliveryManEmail (@emailid varchar(30))
RETURNS int
AS 
BEGIN
DECLARE @result int
 IF (@emailid like '%@%.%')
    SET @result = 0
 ELSE 
    SET @result = 1
 RETURN @result;
END;
GO

ALTER TABLE DeliveryDriver 
  ADD CONSTRAINT chkDeliveryEmail
  CHECK (dbo.CheckDeliveryManEmail(DeliveryManEmail)=0)


--Table level Constraint for DeliveryDriverPhone
GO
CREATE FUNCTION dbo.CheckDeliveryManPhone (@phoneNumber varchar(10))
RETURNS int
AS 
BEGIN
DECLARE @result int
 IF (@phoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
    SET @result = 0
 ELSE 
    SET @result = 1
 RETURN @result;
END;
GO

ALTER TABLE DeliveryDriver
  ADD CONSTRAINT chkDeliveryPhone
  CHECK (dbo.CheckDeliveryManPhone(DeliveryManPhone)=0)
