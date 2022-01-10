-- la liste des employés
-- nom et prénom employé => employees
-- nom du chef de service de l'employé => employees
SELECT CONCAT(E.FirstName ,' ' , E.LastName) AS Fullname
				, CS.LastName AS NomChef -- *
FROM Employees AS E
	JOIN Employees AS CS
		ON E.ReportsTo = CS.EmployeeID