USE Fiesta_Bites;

GO
CREATE FUNCTION dbo.CalculateBill(@TotalAmount FLOAT, @Quantity INT)
RETURNS FLOAT
AS
BEGIN 
   RETURN @TotalAmount*@Quantity
END 
GO	

ALTER TABLE OrderDetails 
ADD CalculatedBill AS dbo.CalculateBill(TotalAmount,Quantity);

SELECT * FROM OrderDetails;
