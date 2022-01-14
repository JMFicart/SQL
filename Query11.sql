-- 1. Indiquer la clé primaire PK de la table country.

--alter table Country add primary key (CountryId);

-- 2. Ajouter une colonne dans les 4 tables pour stocker la clé étrangère.

--ALTER TABLE Customers
--ADD CountryId integer; 

--ALTER TABLE Employees
--ADD CountryId integer; 

--ALTER TABLE Orders
--ADD CountryId integer; 

--ALTER TABLE Suppliers
--ADD CountryId integer; 

-- 3. Alimenter en données les nouvelles colonnes des 4 tables.

--UPDATE Customers
--SET Customers.CountryId = CT.CountryId
--FROM Customers CU INNER JOIN Country CT
--ON CU.Country = CT.Name;

--update customers set customers.CountryId = (select countryid 
--from Country 
--where country.name = customers.Country)

--update customers set customers.CountryId = country.CountryId 
--from Country 
--where country.name = customers.country

--UPDATE Employees
--SET Employees.CountryId = CT.CountryId
--FROM Employees CU INNER JOIN Country CT
--ON CU.Country = CT.Name;

--update Employees set Employees.CountryId = country.CountryId 
--from Country 
--where country.name = Employees.country

--UPDATE Suppliers
--SET Suppliers.CountryId = CT.CountryId
--FROM Suppliers CU INNER JOIN Country CT
--ON CU.Country = CT.Name;

--update suppliers set suppliers.CountryId = country.CountryId 
--from Country 
--where country.name = suppliers.Country

--UPDATE Orders
--SET Orders.CountryId = CT.CountryId
--FROM Orders CU INNER JOIN Country CT
--ON CU.ShipCountry = CT.Name;

--update orders set orders.CountryId = country.CountryId 
--from Country 
--where country.name = orders.ShipCountry

-- 4. Vérifier la cohérence entre les anciennes données et la nouvelle table country.

select C.Companyname, C.Country, C.CountryId, P.*
from Customers C left outer join Country P on C.CountryId = p.CountryId
where C.country <> P.name

select C.Lastname, C.Country, C.CountryId, P.*
from Employees C left outer join Country P on C.CountryId = p.CountryId
where C.country <> P.name

select C.CompanyName, C.Country, C.CountryId, P.*
from Suppliers C left outer join Country P on C.CountryId = p.CountryId
where C.country <> P.name

select C.OrderID, C.shipCountry, C.CountryId, P.*
from Orders C left outer join Country P on C.CountryId = p.CountryId
where C.ShipCountry <> P.name

-- 5. Supprimer les anciennes colonnes dans les 4 tables.

--ALTER TABLE Customers
--DROP column Country;

--ALTER TABLE Employees
--DROP column Country; 

--ALTER TABLE Orders
--DROP column ShipCountry; 

--ALTER TABLE Suppliers
--DROP column Country; 

-- 6. Ajouter une foreign key entre la table Country et les 4 tables.

--ALTER TABLE Customers
--  ADD CONSTRAINT FK_Customers_Country FOREIGN KEY (CountryId)     
--      REFERENCES dbo.Country (CountryId)
--      --ON DELETE NO ACTION    
--      --ON UPDATE CASCADE

--ALTER TABLE Employees
--  ADD CONSTRAINT FK_Employees_Country FOREIGN KEY (CountryId)     
--      REFERENCES dbo.Country (CountryId)
--      --ON DELETE NO ACTION    
--      --ON UPDATE CASCADE

--ALTER TABLE Suppliers
--  ADD CONSTRAINT FK_Suppliers_Country FOREIGN KEY (CountryId)     
--      REFERENCES dbo.Country (CountryId)
--      --ON DELETE NO ACTION    
--      --ON UPDATE CASCADE

--ALTER TABLE Orders
--  ADD CONSTRAINT FK_Orders_Country FOREIGN KEY (CountryId)     
--      REFERENCES dbo.Country (CountryId)
--      --ON DELETE NO ACTION    
--      --ON UPDATE CASCADE

-- Test de comparaison de vitesse entre 2 méthodes.
--select C.CompanyName, C.Address, c.City, c.PostalCode, c.Country as CountryName
--from Customers C 
--order by C.Country, C.PostalCode

--select C.CompanyName, C.Address, c.City, c.PostalCode, D.name as CountryName
--from Customers C inner join Country D
--on C.CountryId = D.CountryId
--order by CountryName, C.PostalCode

-- Test par delete des contraintes d'intégrité.
delete from country 
where countryid = 20
