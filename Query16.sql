-- La liste des employés :
-- id employé
-- nom, prénom
-- date de naissance
-- age
-- adresse
-- code postal
-- ville
-- pays

select EmployeeID, concat_ws(' ',firstname, lastname) as Name, BirthDate, floor(datediff(day, BirthDate, CURRENT_TIMESTAMP) / 365.25) as Age,
Address, PostalCode, City, C.Name as Country
from [dbo].[employees] E inner join [dbo].[country] C on E.CountryId = C.CountryId
--order by age desc
--1972/02/19
--update employees set birthdate = '2021-01-18' where employeeid = 2
