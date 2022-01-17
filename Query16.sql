-- La liste des employés :
-- id employé
-- nom, prénom
-- date de naissance
-- age
-- adresse
-- code postal
-- ville
-- pays

--select EmployeeID, concat_ws(' ',firstname, lastname) as Name, BirthDate, 
--floor(datediff(day, BirthDate, CURRENT_TIMESTAMP) / 365.25) as Age,
--Address, PostalCode, City, C.Name as Country
--from [dbo].[employees] E inner join [dbo].[country] C on E.CountryId = C.CountryId
--order by age desc
--1972/02/19
--update employees set birthdate = '1972-02-19' where employeeid = 2

--select EmployeeID, concat_ws(' ',firstname, lastname) as Name, format(BirthDate,'dd-MM-yyyy') as Birthdate, 
--CASE
--    WHEN FORMAT(CURRENT_TIMESTAMP, N'MMdd') < FORMAT(BirthDate, N'MMdd') THEN datediff(year, BirthDate, CURRENT_TIMESTAMP) - 1
--    ELSE datediff(year, BirthDate, CURRENT_TIMESTAMP) 
--	END AS Age,
--Address, PostalCode, City, C.Name as Country
--from [dbo].[employees] E inner join [dbo].[country] C on E.CountryId = C.CountryId

--select datepart(month, CURRENT_TIMESTAMP)
--SELECT Birthdate, CURRENT_TIMESTAMP, datediff(year, BirthDate, CURRENT_TIMESTAMP) as age, FORMAT(cast(CURRENT_TIMESTAMP as date), N'MMdd') as DJ, FORMAT(cast(birthdate as date), N'MMdd') as birthdate
--from employees

--select EmployeeID, concat_ws(' ',firstname, lastname) as Name, format(BirthDate,'dd-MM-yyyy') as Birthdate, 
--CASE
--    WHEN datepart(month,CURRENT_TIMESTAMP) < datepart(month,BirthDate) or (datepart(month,CURRENT_TIMESTAMP) = datepart(month,BirthDate) and datepart(DAY,CURRENT_TIMESTAMP) < datepart(DAY,BirthDate)) THEN datediff(year, BirthDate, CURRENT_TIMESTAMP) - 1
--    ELSE datediff(year, BirthDate, CURRENT_TIMESTAMP) 
--	END AS Age,
--Address, PostalCode, City, C.Name as Country
--from [dbo].[employees] E inner join [dbo].[country] C on E.CountryId = C.CountryId

--select EmployeeID, concat_ws(' ',firstname, lastname) as Name, format(BirthDate,'dd-MM-yyyy') as Birthdate, 
--dbo.fn_GetAge(BirthDate) AS Age, Address, PostalCode, City, C.Name as Country
--from [dbo].[employees] E inner join [dbo].[country] C on E.CountryId = C.CountryId

select DatePart(year, O.OrderDate) as Annee, DatePart(month, O.OrderDate) as Mois, round(sum(D.UnitPrice * D.Quantity * (1 - D.Discount)), 2) as CA
from orders O inner join [Order Details] D on O.OrderID = D.OrderID
where DatePart(year, O.OrderDate) = 1997
group by DatePart(year, O.OrderDate), DatePart(month, O.OrderDate)

select * from dbo.fn_CAMensuelsAnnee(1997);
