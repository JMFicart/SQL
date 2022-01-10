-- la liste des pays utilisés dans les tables customers, suppliers, emplyees, orders
--select * from (
--select Country as name
--from customers
--union
--select ShipCountry as name
--from orders
--union
--select Country as name
--from suppliers
--union
--select Country as name
--from Employees));

--INSERT INTO Country (Name)
--SELECT *
--FROM (select Country as name
--from customers
--union
--select ShipCountry as name
--from orders
--union
--select Country as name
--from suppliers
--union
--select Country as name
--from Employees);

-- Supprime le contenu d'une table
--delete
--from country 
--where 1=1;

-- Supprime la table de la base de données
--drop table country;

--select identity(int,1,1) as CountryId, Name
--into Country
--From
--(select Country as name
--from customers
--union
--select ShipCountry as name
--from orders
--union
--select Country as name
--from suppliers
--union
--select Country as name
--from Employees
--) as tbl_intermediaire
--order by name asc

--select * from Country

