-- la liste des commandes du deuxi�me trimestre de 1997
-- n� commande , date de la commande
-- le nom du client
-- le nom de l'employ� qui a encod� la commande
-- le nom du livreur de la commande

SELECT *
FROM Orders AS O
	JOIN Customers C
			ON O.CustomerID = C.CustomerID
	JOIN Employees E
			ON O.EmployeeID = E.EmployeeID
	JOIN Shippers S
			ON O.ShipVia = S.ShipperID
WHERE O.OrderDate BETWEEN '1997-04-01' AND '1997-06-30 23:59:59'