-- Liste des commandes non livrées du 1er semestre 1998
-- La liste contient le n° de commande, la date de commande, la date de livraison, le nom du client, le téléphone du client
-- le nom de l'employé ayant encodé la commande.
--select O.OrderID, O.OrderDate, O.ShippedDate, C.CompanyName, C.Phone, concat_WS(' ', E.FirstName, E.LastName) as EmployeeName
--from orders O inner join Customers C on O.CustomerID = C.CustomerID 
--inner join Employees E on O.EmployeeID = E.EmployeeID
--where year(O.orderdate) = 1998 and datepart(quarter, O.Orderdate) < 3 and O.ShippedDate is null

-- Liste des commandes livrées avec plus de 5 jours de retard du 1er semestre 1998
-- La liste contient le n° de commande, la date de commande, la date de livraison, le nom du client, le téléphone du client
-- le nom de l'employé ayant encodé la commande.
--alter view vw_ListeCommandesLivreesEnRetard as select top 100 percent O.OrderID, O.OrderDate, O.ShippedDate, O.RequiredDate, C.CompanyName, C.Phone, 
--concat_WS(' ', E.FirstName, E.LastName) as EmployeeName, datediff(day, O.RequiredDate, O.ShippedDate) as ecart,
--year(O.orderdate) as Annee, 
--CASE
--    WHEN datepart(quarter, O.Orderdate) < 3 THEN 1
--    ELSE 2
--	END AS Semestre
--from orders O inner join Customers C on O.CustomerID = C.CustomerID 
--inner join Employees E on O.EmployeeID = E.EmployeeID
--where --year(O.orderdate) = 1998 and datepart(quarter, O.Orderdate) < 3 and 
--datediff(day, O.RequiredDate, O.ShippedDate) > 5
--order by c.CompanyName, OrderDate

--select * from vw_ListeCommandesLivreesEnRetard
--order by CompanyName, OrderDate

--select * 
--from fn_ListeCommandesLivreesEnRetard(14)
--order by OrderID

--select *
--from [TFNSJAVA08\SQLEXPRESS].Northwind.dbo.vw_ListeCommandesLivreesEnRetard

