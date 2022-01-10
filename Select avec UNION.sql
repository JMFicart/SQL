-- UNION , INTERSECT , EXCEPT
-- Contraintes : 
-- le nombre de colonnes des select doit �tre le m�me
-- et le type des colonnes en correpondance  doit �tre le m�me
--
-- la liste des clients tri�� code postal
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