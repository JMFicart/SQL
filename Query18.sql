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
-- Description:	Calcul du semestre d'une date
-- =============================================
CREATE FUNCTION fn_GetSemester 
(
	-- Add the parameters for the function here
	@p1 datetime
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result = CASE
    WHEN datepart(quarter, @p1) < 3 THEN 1
    ELSE 2
	END

	-- Return the result of the function
	RETURN @Result
END
GO

