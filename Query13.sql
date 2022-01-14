-- Fonctions d'agregat Sum() Min() Max() Avg() Count()
--select avg(UnitPrice) as Moyenne, avg(unitsinstock) as Stock
--from products

--select min(UnitPrice) as PlusPetitPrix
--from products

--select max(UnitPrice) as PlusGrandPrix
--from products

--select avg(UnitPrice) as Moyenne, min(UnitPrice) as PlusPetitPrix, max(UnitPrice) as PlusGrandPrix, 
--sum(unitsinstock) as QuantiteTotaleEnStock,
--sum(unitprice * unitsinstock) as ValeurInventaire,
--count(*) as NbreProduits
--from products
--where Discontinued = 'False'

--select CategoryID, sum(unitsinstock) as QuantiteTotaleEnStock, sum(unitprice * unitsinstock) as ValeurInventaire
--from products
--where Discontinued = 'False'
--group by CategoryID

---- Liste des produits dont le prix est supérieur à la moyenne des prix.
--select * from products
--where UnitPrice > (select avg(unitprice) from products)

---- Fonctions agregat avec group by
---- Le customerid et le nombre de commandes qu'il a passées.

--select top 10 with ties Customerid, count(OrderID) as NbreCommandes
--from Orders
--group by CustomerID
--order by NbreCommandes desc

---- Faire la liste du nombre de commandes par trimestre.
--select datepart(Quarter, Orderdate) as Trimestre, 
--count(orders.OrderID) as NbreCommandes
--from orders
--group by datepart(Quarter, Orderdate)
--order by Trimestre

---- Faire la liste du nombre de commandes par année, trimestre, catégorie produit.
--select datepart(YEAR, O.Orderdate) as Annee, datepart(Quarter, O.Orderdate) as Trimestre,
--C.CategoryName, count(O.OrderID) as NbreCommandes
--from orders O inner join [Order Details] D on O.OrderID = D.OrderID
--inner join Products P on D.ProductID = P.ProductID inner join Categories C on P.CategoryID = C.CategoryID
--group by datepart(YEAR, Orderdate), datepart(Quarter, Orderdate), C.CategoryName
--order by Annee, Trimestre, C.CategoryName

---- Faire la liste du nombre de commandes par trimestre de chaque année.
--select datepart(YEAR, Orderdate) as Annee, datepart(Quarter, Orderdate) as Trimestre, 
--count(orders.OrderID) as NbreCommandes
--from orders
--group by datepart(YEAR, Orderdate), datepart(Quarter, Orderdate)
--order by Annee, Trimestre

-- Faire la liste des catégories et le nombre de produits par catégorie.
-- Contenu categoryid, nbre de produits par catégorie.
--select C.CategoryID, C.CategoryName, count(P.categoryid) as NbreProduits
--from products P inner join Categories C on P.CategoryID = C.CategoryID
--group by C.CategoryID, C.CategoryName

-- La liste du détail des commandes.
-- N° de commande, date de commande, nom du produit commandé, son prix et la quantité commandée.
-- Le nombre de rows devrait > 2100
--select O.OrderID, O.OrderDate, P.ProductName, D.UnitPrice, D.Quantity
--from Orders O inner join [Order Details] D on O.OrderID = D.OrderID 
--inner join Products P on D.ProductID = P.ProductID
--order by O.OrderID, P.ProductName asc

--select D.OrderID, P.ProductName, D.UnitPrice, P.UnitPrice
--from [Order Details] D inner join Products P
--on D.ProductID = p.ProductID

-- La liste du détail des commandes.
-- N° de commande, date de commande, montant total de la commande
-- Le nombre de rows devrait = 830
select O.OrderID, O.OrderDate, round(sum(OD.Quantity * (OD.unitprice * (1 - OD.Discount))),2) as TotalCommande,
round(sum(OD.Quantity * OD.unitprice * OD.Discount), 2) as Ristourne,
round(sum(OD.Quantity * OD.unitprice), 2) as TC1
from Orders O inner join [Order Details] OD 
on O.OrderID = OD.OrderID
group by O.orderid, O.OrderDate
order by O.OrderID asc
