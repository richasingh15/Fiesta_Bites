  --VIEW For Customer Rating

 CREATE VIEW dbo.Restaurant_Rating AS

Select AVG(Rating) as Average_Rating, r.ResturantName  from dbo.customerrating c
JOIN dbo.Resturant r on r.ResturantID = c.RestaurantID
GROUP BY RestaurantID, r.ResturantName;

select * from Restaurant_Rating ;


--View for restaurants based on delivery
GO
CREATE VIEW dbo.BestRestaurants AS
SELECT  r.ResturantName , COUNT(od.OrderId) As Number_of_Orders
from [dbo].[Resturant] r
INNER JOIN [dbo].[CustomerOrderDeliveryRest] de ON de.ResturantID = r.ResturantID
INNER JOIN dbo.OrderDetails od ON od.OrderID = de.OrderID
GROUP BY r.ResturantName

SELECT * from dbo.BestRestaurants



--Number of orders per Quarter
GO
CREATE VIEW dbo.OrdersperQuarter AS
SELECT COUNT(OrderID) as Orders_Per_Quarter, CAST(ROW_NUMBER() OVER (ORDER BY COUNT(OrderID)) AS VARCHAR) AS Row_Number from OrderDetails
WHERE OrderStatus = 'Completed'
GROUP BY DATEPART(QQ, Date)

SELECT * from dbo.OrdersperQuarter




--Number of orders according to weekday
GO
CREATE VIEW dbo.OrdersOnWeekday AS
SELECT COUNT(OrderID) as Orders_On_Weekday, CAST(ROW_NUMBER() OVER (ORDER BY COUNT(OrderID)) AS VARCHAR) AS Row_Number from OrderDetails
WHERE OrderStatus = 'Completed'
GROUP BY DATEPART(DW, Date)

SELECT * FROM dbo.OrdersOnWeekday


-- Number of Customers registered per City
GO
CREATE VIEW dbo.RegistrationArea AS
SELECT COUNT(cr.RegistrationNumber) AS Number_of_registeredusers,c.City FROM Customer_Registration cr 
JOIN Customer c ON c.CustID = cr.CustID
GROUP BY c.City;

select * from RegistrationArea
