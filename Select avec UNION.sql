-- UNION , INTERSECT , EXCEPT
-- Contraintes : 
-- le nombre de colonnes des select doit être le même
-- et le type des colonnes en correpondance  doit être le même
--
-- la liste des clients triéé code postal
-- Nom du client , adresse , code postal, ville , pays
SELECT CompanyName as "Name", "Address" , PostalCode, City, Country 
				, ' ' AS Code
FROM Customers   -- 91 rows
-- ORDER BY Country ASC, PostalCode ASC
UNION ALL
SELECT CompanyName, "Address" , PostalCode, City, Country , ' '
FROM Suppliers   -- 29 rows
UNION
SELECT CONCAT(firstname , ' ' , lastname), "Address" , PostalCode, City, Country, 'E'
FROM Employees   -- 9 rows
ORDER BY Country ASC, PostalCode ASC