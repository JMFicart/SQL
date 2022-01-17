-- ================================================
-- Template generated from Template Explorer using:
-- Create Inline Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JM Ficart
-- Create date: 17/01/2022
-- Description:	Liste des commandes livrées en retard
-- =============================================
CREATE FUNCTION fn_ListeCommandesLivreesEnRetard 
(	
	-- Add the parameters for the function here
	@NbreJoursRetard int, 
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	select O.OrderID, O.OrderDate, O.ShippedDate, O.RequiredDate, C.CompanyName, C.Phone, 
	concat_WS(' ', E.FirstName, E.LastName) as EmployeeName, datediff(day, O.RequiredDate, O.ShippedDate) as ecart,
	year(O.orderdate) as Annee, 
	CASE
		WHEN datepart(quarter, O.Orderdate) < 3 THEN 1
		ELSE 2
	END AS Semestre
	from orders O inner join Customers C on O.CustomerID = C.CustomerID 
	inner join Employees E on O.EmployeeID = E.EmployeeID
	where datediff(day, O.RequiredDate, O.ShippedDate) > @NbreJoursRetard
	order by c.CompanyName, OrderDate
	offset 0 rows
)
GO
