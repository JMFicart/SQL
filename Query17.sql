-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
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
-- Author:		Ficart Jean-Marc
-- Create date: 17-01-2022
-- Description:	Calcul l'âge en année d'une entité.
-- =============================================
CREATE FUNCTION fn_GetAge 
(
	-- Add the parameters for the function here
	@BirthDate DateTime
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int

	-- Add the T-SQL statements to compute the return value here
	SET @Result = CASE
    WHEN FORMAT(CURRENT_TIMESTAMP, N'MMdd') < FORMAT(@BirthDate, N'MMdd') THEN datediff(year, @BirthDate, CURRENT_TIMESTAMP) - 1
    ELSE datediff(year, @BirthDate, CURRENT_TIMESTAMP) 
	END

	-- Return the result of the function
	RETURN @Result

END
GO

