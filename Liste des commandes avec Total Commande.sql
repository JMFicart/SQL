-- la liste du détail des commandes
-- le n° de la commande      (, la date de la commande)
-- le montant total de la commande
-- Le nombre de rows = 830


SELECT O.OrderID AS NuméroCommande --numéro de la commande
		, O.OrderDate AS DateCommande --date de la commande
--		, P.ProductName AS NomProduit --nom du produit commandé
--		, OD.Quantity AS QuantitéCommandée --quantité commandée
--		, OD.UnitPrice
--		, OD.Discount
		, SUM(OD.Quantity * OD.UnitPrice ) AS TotalBrutCommande
		, SUM(OD.Quantity * OD.UnitPrice * OD.Discount ) AS MontantRistourne
		, ROUND(SUM( OD.Quantity * OD.UnitPrice * (1-od.Discount) ),2) AS TotalNetCommande
FROM Orders AS O
INNER JOIN [Order Details] AS OD
	ON O.OrderID = OD.OrderID
INNER JOIN Products AS P
	ON P.ProductID = OD.ProductID
GROUP BY O.OrderID,O.OrderDate
ORDER BY NuméroCommande ASC