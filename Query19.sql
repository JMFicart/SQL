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
-- Author:		Jean-Marc Ficart
-- Create date: 17/01/2022
-- Description:	Fonction donnant le chiffre d'affaires menusels à partir d'une année
-- =============================================
CREATE FUNCTION fn_CAMensuelsAnnee 
(	
	-- Add the parameters for the function here
	@Annee int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Fonction qui a besoin de l'année et qui fournit le chiffre d'affaires mensuels.

	-- Add the SELECT statement with parameter references here
	select DatePart(year, O.OrderDate) as Annee, DatePart(month, O.OrderDate) as Mois, round(sum(D.UnitPrice * D.Quantity * (1 - D.Discount)), 2) as CA
	from orders O inner join [Order Details] D on O.OrderID = D.OrderID
	where DatePart(year, O.OrderDate) = @Annee
	group by DatePart(year, O.OrderDate), DatePart(month, O.OrderDate)
)
GO
