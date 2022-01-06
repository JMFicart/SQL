-- Liste des employ�s
-- Nom, pr�nom de l'employ�
-- Nom du chef de service

select Concat(E.FirstName, ' ', E.LastName) as 'Employee Name', concat(C.FirstName, ' ', C.LastName) as 'Chief Name'
from Employees E join Employees C on E.ReportsTo = C.EmployeeID


