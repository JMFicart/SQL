-- EXCEPT
-- La liste des clients n'ayant jamais passé de commandes
-- customerid

select CustomerID
from Customers
except 
select CustomerID
from orders
order by CustomerID;

-- customerid + nom du customer
select C.CustomerID, c.CompanyName
from Customers C
where c.CustomerID not in 
(select distinct O.CustomerID from orders O)
order by c.CustomerID;

select CustomerID, CompanyName
from Customers
except 
select O.CustomerID, C.companyname
from orders O inner join customers C
on o.CustomerID = c.CustomerID
order by CustomerID;

select C.CustomerID, C.CompanyName
from Customers C left outer join orders O on o.CustomerID = c.CustomerID
where O.OrderID is null

