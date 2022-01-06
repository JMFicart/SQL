-- Liste des employés
-- Nom, prénom de l'employé
-- Nom du chef de service

select Concat(E.FirstName, ' ', E.LastName) as 'Employee Name', concat(C.FirstName, ' ', C.LastName) as 'Chief Name'
from Employees E join Employees C on E.ReportsTo = C.EmployeeID


