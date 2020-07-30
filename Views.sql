 --VIEW For Payment Table

 CREATE VIEW [PaymentDetails] AS
 SELECT PaymentID, CustEmail
 FROM Payment;
 
 SELECT * FROM PaymentDetails;

 --VIEW For Customer Rating

 CREATE VIEW [dbo].[Restaurant_Rating] AS

Select AVG(Rating) as Average_Rating, r.ResturantName  from dbo.customerrating c
JOIN dbo.Resturant r on r.ResturantID = c.RestaurantID
GROUP BY RestaurantID, r.ResturantName;

select * from [Restaurant_Rating] ;
