-- Except
-- la liste des clients qui n'ont jamais passé commande
-- le customerid, le nom du client

-- Solution avec avec IN
SELECT CustomerID , CompanyName
FROM Customers
WHERE CustomerID IN (
											SELECT CustomerID  
											FROM Customers
											EXCEPT
											SELECT DISTINCT o.CustomerID 
											FROM Orders O
										)

-- Solution avec avec NOT IN 
SELECT CustomerID , CompanyName
FROM Customers
WHERE CustomerID NOT IN (
											SELECT DISTINCT o.CustomerID 
											FROM Orders O
											)

-- Solution avec EXCEPT et INNER JOIN
SELECT CustomerID , CompanyName 
FROM Customers
EXCEPT
SELECT DISTINCT o.CustomerID , c.CompanyName
FROM Orders O
	INNER JOIN Customers C
		ON o.CustomerID = c.CustomerID

-- Solution avec LEFT OUTER JOIN
SELECT C.CustomerID , C.CompanyName 
FROM Customers C 	LEFT OUTER JOIN 	 Orders O
		ON o.CustomerID = c.CustomerID
WHERE OrderID IS NULL