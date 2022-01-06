-- liste des commandes du deuxième trimestre 1997
-- n° de la commande, date de la commande
-- nom du client
-- le nom de l'employé ayant encodé la commande
-- le nom du livreur de la commande
select O.OrderID, O.OrderDate, C.CompanyName as CustomerName, UPPER(E.LastName) + ' ' + E.FirstName as EmployeeName, S.CompanyName as ShippingCompanyName
from ((orders as O join Customers as C on O.CustomerID = C.CustomerID) 
	join Employees as E on O.EmployeeID = E.EmployeeID) 
	join Shippers as S on O.ShipVia = S.ShipperID
where year(O.orderdate) = 1997 and DATEPART(QUARTER, O.OrderDate) = 2
order by O.OrderDate
--where CAST(year(O.orderdate) AS char(4)) + cast(DATEPART(QUARTER, O.OrderDate) as char(1)) = '19972'

-- fonction datepart retournant le trimestre d'une date
--SELECT orders.orderdate, DATEPART(QUARTER, orders.orderdate)
--from Orders;
