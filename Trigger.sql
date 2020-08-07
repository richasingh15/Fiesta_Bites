-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[orderhistory] ON [dbo].[OrderDetails]
   AFTER INSERT
AS 
BEGIN
	declare @orderid varchar(30);
	declare @totalamount float;
	declare @amountpaid float;
	declare @orderstatus varchar(10);
	declare @quantity float;
	declare @date date;
	

	select @orderid = orderlist.OrderID from inserted orderlist;
	select @totalamount = orderlist.TotalAmount from inserted orderlist;
	select @amountpaid = orderlist.AmountPaid from inserted orderlist;
	select @orderstatus = orderlist.OrderStatus from inserted orderlist;
	select @quantity = orderlist.Quantity from inserted orderlist;
	select @date = orderlist.Date from inserted orderlist;
	

	INSERT INTO OrderDetailHistory(OrderID, TotalAmount, AmountPaid, OrderStatus, Quantity,Date)
                VALUES(@orderid,@totalamount,@amountpaid,@orderstatus,@quantity,@date)
END
GO
