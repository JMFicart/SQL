-- la liste des employ�s
-- nom et pr�nom employ� => employees
-- nom du chef de service de l'employ� => employees
SELECT CONCAT(E.FirstName ,' ' , E.LastName) AS Fullname
				, CS.LastName AS NomChef -- *
FROM Employees AS E
	JOIN Employees AS CS
		ON E.ReportsTo = CS.EmployeeID