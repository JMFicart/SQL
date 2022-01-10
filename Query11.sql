--ALTER TABLE Customers
--ADD CountryId integer; 

--ALTER TABLE Employees
--ADD CountryId integer; 

--ALTER TABLE Orders
--ADD CountryId integer; 

--ALTER TABLE Suppliers
--ADD CountryId integer; 

--update products 
--set UnitPrice = UnitPrice * 1.10
--where CategoryID = 8;

--select * from customers where country = 'Belgium'

--update Customers
--set City = upper(city)
--where country = 'Belgium'

--UPDATE
--    Customers
--SET
--    Customers.CountryId = CT.CountryId
--FROM
--    Customers CU
--INNER JOIN
--    Country CT
--ON 
--    CU.Country = CT.Name;

--UPDATE
--    Employees
--SET
--    Employees.CountryId = CT.CountryId
--FROM
--    Employees CU
--INNER JOIN
--    Country CT
--ON 
--    CU.Country = CT.Name;

--UPDATE
--    Suppliers
--SET
--    Suppliers.CountryId = CT.CountryId
--FROM
--    Suppliers CU
--INNER JOIN
--    Country CT
--ON 
--    CU.Country = CT.Name;

--UPDATE
--    Orders
--SET
--    Orders.CountryId = CT.CountryId
--FROM
--    Orders CU
--INNER JOIN
--    Country CT
--ON 
--    CU.ShipCountry = CT.Name;

--select C.Companyname, C.Country, C.CountryId, P.CountryId, p.Name
--from Customers C inner join Country P on C.CountryId = p.CountryId
--where C.country <> P.name

--ALTER TABLE Customers
--DROP Country;

--ALTER TABLE Employees
--DROP Country; 

--ALTER TABLE Orders
--DROP ShipCountry; 

--ALTER TABLE Suppliers
--DROP Country; 
